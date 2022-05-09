@extends('layout.main') @section('content')
@if(session()->has('message'))
  <div class="alert alert-success alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{!! session()->get('message') !!}</div>
@endif
@if(session()->has('not_permitted'))
  <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('not_permitted') }}</div>
@endif

<section>
    <div class="container-fluid">
        <div class="card">
            <div class="card-header mt-2">
                <h3 class="text-center">Sale Trash List</h3>
            </div>
            <div class="card-body">
                <a href="{{ route('sale.recover.all') }}" class="btn btn-success"> Recover All </a>
            </div>
        </div>

    </div>
    <div class="table-responsive">
        <table id="sale-table" class="table sale-list" style="width: 100%">
            <thead>
                <tr>
                    <th class="not-exported"></th>
                    <th>{{trans('file.Date')}}</th>
                    <th>{{trans('file.reference')}}</th>
                    <th>{{trans('file.Biller')}}</th>
                    <th>{{trans('file.customer')}}</th>
                    <th>{{trans('file.Sale Status')}}</th>
                    <th>{{trans('file.Payment Status')}}</th>
                    <th>{{trans('file.grand total')}}</th>
                    <th>{{trans('file.Paid')}}</th>
                    <th>{{trans('file.Due')}}</th>
                    <th class="not-exported">{{trans('file.action')}}</th>
                </tr>
            </thead>

            <tfoot class="tfoot active">
                <th></th>
                <th>{{trans('file.Total')}}</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
            </tfoot>
        </table>
    </div>
</section>

<div id="sale-details" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
    <div role="document" class="modal-dialog">
        <div class="modal-content">
            <div class="container mt-3 pb-2 border-bottom">
                <div class="row">
                    <div class="col-md-6 d-print-none">
                        <button id="print-btn" type="button" class="btn btn-default btn-sm"><i class="dripicons-print"></i> {{trans('file.Print')}}</button>

                        {{ Form::open(['route' => 'sale.sendmail', 'method' => 'post', 'class' => 'sendmail-form'] ) }}
                            <input type="hidden" name="sale_id">
                            <button class="btn btn-default btn-sm d-print-none"><i class="dripicons-mail"></i> {{trans('file.Email')}}</button>
                        {{ Form::close() }}
                    </div>
                    <div class="col-md-6 d-print-none">
                        <button type="button" id="close-btn" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true"><i class="dripicons-cross"></i></span></button>
                    </div>
                    <div class="col-md-12">
                        <h3 id="exampleModalLabel" class="modal-title text-center container-fluid">{{$general_setting->site_title}}</h3>
                    </div>
                    <div class="col-md-12 text-center">
                        <i style="font-size: 15px;">{{trans('file.Sale Details')}}</i>
                    </div>
                </div>
            </div>
            <div id="sale-content" class="modal-body">
            </div>
            <br>
            <table class="table table-bordered product-sale-list">
                <thead>
                    <th>#</th>
                    <th>{{trans('file.product')}}</th>
                    <th>{{trans('file.Batch No')}}</th>
                    <th>{{trans('file.Qty')}}</th>
                    <th>{{trans('file.Unit')}}</th>
                    <th>{{trans('file.Unit Price')}}</th>
                    <th>{{trans('file.Tax')}}</th>
                    <th>{{trans('file.Discount')}}</th>
                    <th>{{trans('file.Subtotal')}}</th>
                </thead>
                <tbody>
                </tbody>
            </table>
            <div id="sale-footer" class="modal-body"></div>
        </div>
    </div>
</div>


@endsection

@push('scripts')
<script type="text/javascript">

    $("ul#sale").siblings('a').attr('aria-expanded','true');
    $("ul#sale").addClass("show");
    $("ul#sale #sale-list-menu").addClass("active");
    var public_key = <?php echo json_encode($lims_pos_setting_data->stripe_public_key) ?>;
    var all_permission = <?php echo json_encode($all_permission) ?>;
    var reward_point_setting = <?php echo json_encode($lims_reward_point_setting_data) ?>;
    var sale_id = [];
    var user_verified = <?php echo json_encode(env('USER_VERIFIED')) ?>;

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $(".daterangepicker-field").daterangepicker({
      callback: function(startDate, endDate, period){
        var starting_date = startDate.format('YYYY-MM-DD');
        var ending_date = endDate.format('YYYY-MM-DD');
        var title = starting_date + ' To ' + ending_date;
        $(this).val(title);
        $('input[name="starting_date"]').val(starting_date);
        $('input[name="ending_date"]').val(ending_date);
      }
    });

    $('.selectpicker').selectpicker('refresh');

    $(".gift-card").hide();
    $(".card-element").hide();
    $("#cheque").hide();
    $('#view-payment').modal('hide');

    $(document).on("click", "tr.sale-link td:not(:first-child, :last-child)", function() {
        var sale = $(this).parent().data('sale');
        saleDetails(sale);
    });

    $(document).on("click", ".view", function(){
        var sale = $(this).parent().parent().parent().parent().parent().data('sale');
        saleDetails(sale);
    });

    $("#print-btn").on("click", function(){
        var divContents = document.getElementById("sale-details").innerHTML;
        var a = window.open('');
        a.document.write('<html>');
        a.document.write('<head><style>body{font-family: sans-serif;line-height: 1.15;-webkit-text-size-adjust: 100%;}.d-print-none{display:none}.text-center{text-align:center}.row{width:100%;margin-right: -15px;margin-left: -15px;}.col-md-12{width:100%;display:block;padding: 5px 15px;}.col-md-6{width: 50%;float:left;padding: 5px 15px;}table{width:100%;margin-top:30px;}th{text-aligh:left}td{padding:10px}table,th,td{border: 1px solid black; border-collapse: collapse;}</style><style>@media print {.modal-dialog { max-width: 1000px;} }</style></head>');
        a.document.write('<body >');
        a.document.write(divContents);
        a.document.write('</body></html>');
        a.document.close();
        setTimeout(function(){a.close();},10);
        a.print();
    });

















    var all_permission = <?php echo json_encode($all_permission) ?>;
    $('#sale-table').DataTable( {
        "processing": true,
        "serverSide": true,
        "ajax":{
            url:"{{ route('sale.trash.data') }}",
            data:{
            all_permission: all_permission,
            },
            dataType: "json",
            type:"post"
        },
        /*rowId: function(data) {
              return 'row_'+data['id'];
        },*/
        "createdRow": function( row, data, dataIndex ) {
            //alert(data);
            $(row).addClass('sale-link');
            $(row).attr('data-sale', data['sale']);
        },
        "columns": [
            {"data": "key"},
            {"data": "date"},
            {"data": "reference_no"},
            {"data": "biller"},
            {"data": "customer"},
            {"data": "sale_status"},
            {"data": "payment_status"},
            {"data": "grand_total"},
            {"data": "paid_amount"},
            {"data": "due"},
            {"data": "options"},
        ],
        'language': {

            'lengthMenu': '_MENU_ {{trans("file.records per page")}}',
             "info":      '<small>{{trans("file.Showing")}} _START_ - _END_ (_TOTAL_)</small>',
            "search":  '{{trans("file.Search")}}',
            'paginate': {
                    'previous': '<i class="dripicons-chevron-left"></i>',
                    'next': '<i class="dripicons-chevron-right"></i>'
            }
        },
        order:[['1', 'desc']],
        'columnDefs': [
            {
                "orderable": false,
                'targets': [0, 3, 4, 5, 6, 9, 10]
            },
            {
                'render': function(data, type, row, meta){
                    if(type === 'display'){
                        data = '<div class="checkbox"><input type="checkbox" class="dt-checkboxes"><label></label></div>';
                    }

                   return data;
                },
                'checkboxes': {
                   'selectRow': true,
                   'selectAllRender': '<div class="checkbox"><input type="checkbox" class="dt-checkboxes"><label></label></div>'
                },
                'targets': [0]
            }
        ],
        'select': { style: 'multi',  selector: 'td:first-child'},
        'lengthMenu': [[10, 25, 50, -1], [10, 25, 50, "All"]],
        dom: '<"row"lfB>rtip',
        rowId: 'ObjectID',
        buttons: [
            {
                extend: 'pdf',
                text: '<i title="export to pdf" class="fa fa-file-pdf-o"></i>',
                exportOptions: {
                    columns: ':visible:Not(.not-exported)',
                    rows: ':visible'
                },
                action: function(e, dt, button, config) {
                    datatable_sum(dt, true);
                    $.fn.dataTable.ext.buttons.pdfHtml5.action.call(this, e, dt, button, config);
                    datatable_sum(dt, false);
                },
                footer:true
            },
            {
                extend: 'csv',
                text: '<i title="export to csv" class="fa fa-file-text-o"></i>',
                exportOptions: {
                    columns: ':visible:Not(.not-exported)',
                    rows: ':visible'
                },
                action: function(e, dt, button, config) {
                    datatable_sum(dt, true);
                    $.fn.dataTable.ext.buttons.csvHtml5.action.call(this, e, dt, button, config);
                    datatable_sum(dt, false);
                },
                footer:true
            },
            {
                extend: 'print',
                text: '<i title="print" class="fa fa-print"></i>',
                exportOptions: {
                    columns: ':visible:Not(.not-exported)',
                    rows: ':visible'
                },
                action: function(e, dt, button, config) {
                    datatable_sum(dt, true);
                    $.fn.dataTable.ext.buttons.print.action.call(this, e, dt, button, config);
                    datatable_sum(dt, false);
                },
                footer:true
            },
            {
                text: '<i title="delete" class="dripicons-cross"></i>',
                className: 'buttons-delete',
                action: function ( e, dt, node, config ) {
                    if(user_verified == '1') {
                        sale_id.length = 0;
                        $(':checkbox:checked').each(function(i){
                            if(i){
                                var sale = $(this).closest('tr').data('sale');
                                sale_id[i-1] = sale[13];
                            }
                        });
                        if(sale_id.length && confirm("Are you sure want to delete?")) {
                            $.ajax({
                                type:'POST',
                                url:'sales/deletebyselection',
                                data:{
                                    saleIdArray: sale_id
                                },
                                success:function(data){
                                    alert(data);
                                    //dt.rows({ page: 'current', selected: true }).deselect();
                                    dt.rows({ page: 'current', selected: true }).remove().draw(false);
                                }
                            });
                        }
                        else if(!sale_id.length)
                            alert('Nothing is selected!');
                    }
                    else
                        alert('This feature is disable for demo!');
                }
            },
            {
                extend: 'colvis',
                text: '<i title="column visibility" class="fa fa-eye"></i>',
                columns: ':gt(0)'
            },
        ],
        drawCallback: function () {
            var api = this.api();
            datatable_sum(api, false);
        }
    } );

   /* $('#sale-table tbody').on('click', 'tr', function () {
            var id = this.id;
            var index = $.inArray(id, selected);

            if ( index === -1 ) {
                selected.push( id );
            } else {
                selected.splice( index, 1 );
            }

            $(this).toggleClass('selected');
        } );*/

    function datatable_sum(dt_selector, is_calling_first) {
        if (dt_selector.rows( '.selected' ).any() && is_calling_first) {
            var rows = dt_selector.rows( '.selected' ).indexes();

            $( dt_selector.column( 7 ).footer() ).html(dt_selector.cells( rows, 7, { page: 'current' } ).data().sum().toFixed(2));
            $( dt_selector.column( 8 ).footer() ).html(dt_selector.cells( rows, 8, { page: 'current' } ).data().sum().toFixed(2));
            $( dt_selector.column( 9 ).footer() ).html(dt_selector.cells( rows, 9, { page: 'current' } ).data().sum().toFixed(2));
        }
        else {
            $( dt_selector.column( 7 ).footer() ).html(dt_selector.cells( rows, 7, { page: 'current' } ).data().sum().toFixed(2));
            $( dt_selector.column( 8 ).footer() ).html(dt_selector.cells( rows, 8, { page: 'current' } ).data().sum().toFixed(2));
            $( dt_selector.column( 9 ).footer() ).html(dt_selector.cells( rows, 9, { page: 'current' } ).data().sum().toFixed(2));
        }
    }

    function saleDetails(sale){
        $("#sale-details input[name='sale_id']").val(sale[13]);

        var htmltext = '<strong>{{trans("file.Date")}}: </strong>'+sale[0]+'<br><strong>{{trans("file.reference")}}: </strong>'+sale[1]+'<br><strong>{{trans("file.Warehouse")}}: </strong>'+sale[27]+'<br><strong>{{trans("file.Sale Status")}}: </strong>'+sale[2]+'<br><br><div class="row"><div class="col-md-6"><strong>{{trans("file.From")}}:</strong><br>'+sale[3]+'<br>'+sale[4]+'<br>'+sale[5]+'<br>'+sale[6]+'<br>'+sale[7]+'<br>'+sale[8]+'</div><div class="col-md-6"><div class="float-right"><strong>{{trans("file.To")}}:</strong><br>'+sale[9]+'<br>'+sale[10]+'<br>'+sale[11]+'<br>'+sale[12]+'</div></div></div>';
        $.get('sales/product_sale/' + sale[13], function(data){
            $(".product-sale-list tbody").remove();
            var name_code = data[0];
            var qty = data[1];
            var unit_code = data[2];
            var tax = data[3];
            var tax_rate = data[4];
            var discount = data[5];
            var subtotal = data[6];
            var batch_no = data[7];
            var newBody = $("<tbody>");
            $.each(name_code, function(index){
                var newRow = $("<tr>");
                var cols = '';
                cols += '<td><strong>' + (index+1) + '</strong></td>';
                cols += '<td>' + name_code[index] + '</td>';
                cols += '<td>' + batch_no[index] + '</td>';
                cols += '<td>' + qty[index] + '</td>';
                cols += '<td>' + unit_code[index] + '</td>';
                cols += '<td>' + parseFloat(subtotal[index] / qty[index]).toFixed(2) + '</td>';
                cols += '<td>' + tax[index] + '(' + tax_rate[index] + '%)' + '</td>';
                cols += '<td>' + discount[index] + '</td>';
                cols += '<td>' + subtotal[index] + '</td>';
                newRow.append(cols);
                newBody.append(newRow);
            });

            var newRow = $("<tr>");
            cols = '';
            cols += '<td colspan=6><strong>{{trans("file.Total")}}:</strong></td>';
            cols += '<td>' + sale[14] + '</td>';
            cols += '<td>' + sale[15] + '</td>';
            cols += '<td>' + sale[16] + '</td>';
            newRow.append(cols);
            newBody.append(newRow);

            var newRow = $("<tr>");
            cols = '';
            cols += '<td colspan=8><strong>{{trans("file.Order Tax")}}:</strong></td>';
            cols += '<td>' + sale[17] + '(' + sale[18] + '%)' + '</td>';
            newRow.append(cols);
            newBody.append(newRow);

            var newRow = $("<tr>");
            cols = '';
            cols += '<td colspan=8><strong>{{trans("file.Order Discount")}}:</strong></td>';
            cols += '<td>' + sale[19] + '</td>';
            newRow.append(cols);
            newBody.append(newRow);
            if(sale[28]) {
                var newRow = $("<tr>");
                cols = '';
                cols += '<td colspan=8><strong>{{trans("file.Coupon Discount")}} ['+sale[28]+']:</strong></td>';
                cols += '<td>' + sale[29] + '</td>';
                newRow.append(cols);
                newBody.append(newRow);
            }

            var newRow = $("<tr>");
            cols = '';
            cols += '<td colspan=8><strong>{{trans("file.Shipping Cost")}}:</strong></td>';
            cols += '<td>' + sale[20] + '</td>';
            newRow.append(cols);
            newBody.append(newRow);

            var newRow = $("<tr>");
            cols = '';
            cols += '<td colspan=8><strong>{{trans("file.grand total")}}:</strong></td>';
            cols += '<td>' + sale[21] + '</td>';
            newRow.append(cols);
            newBody.append(newRow);

            var newRow = $("<tr>");
            cols = '';
            cols += '<td colspan=8><strong>{{trans("file.Paid Amount")}}:</strong></td>';
            cols += '<td>' + sale[22] + '</td>';
            newRow.append(cols);
            newBody.append(newRow);

            var newRow = $("<tr>");
            cols = '';
            cols += '<td colspan=8><strong>{{trans("file.Due")}}:</strong></td>';
            cols += '<td>' + parseFloat(sale[21] - sale[22]).toFixed(2) + '</td>';
            newRow.append(cols);
            newBody.append(newRow);

            $("table.product-sale-list").append(newBody);
        });
        var htmlfooter = '<p><strong>{{trans("file.Sale Note")}}:</strong> '+sale[23]+'</p><p><strong>{{trans("file.Staff Note")}}:</strong> '+sale[24]+'</p><strong>{{trans("file.Created By")}}:</strong><br>'+sale[25]+'<br>'+sale[26];
        $('#sale-content').html(htmltext);
        $('#sale-footer').html(htmlfooter);
        $('#sale-details').modal('show');
    }

    $(document).on('submit', '.payment-form', function(e) {
        if( $('input[name="paying_amount"]').val() < parseFloat($('#amount').val()) ) {
            alert('Paying amount cannot be bigger than recieved amount');
            $('input[name="amount"]').val('');
            $(".change").text(parseFloat( $('input[name="paying_amount"]').val() - $('#amount').val() ).toFixed(2));
            e.preventDefault();
        }
        else if( $('input[name="edit_paying_amount"]').val() < parseFloat($('input[name="edit_amount"]').val()) ) {
            alert('Paying amount cannot be bigger than recieved amount');
            $('input[name="edit_amount"]').val('');
            $(".change").text(parseFloat( $('input[name="edit_paying_amount"]').val() - $('input[name="edit_amount"]').val() ).toFixed(2));
            e.preventDefault();
        }

        $('#edit-payment select[name="edit_paid_by_id"]').prop('disabled', false);
    });

    if(all_permission.indexOf("sales-delete") == -1)
        $('.buttons-delete').addClass('d-none');

        function confirmDelete() {
            if (confirm("Are you sure want to delete?")) {
                return true;
            }
            return false;
        }

    function confirmPaymentDelete() {
        if (confirm("Are you sure want to delete? If you delete this money will be refunded.")) {
            return true;
        }
        return false;
    }

</script>
<script type="text/javascript" src="https://js.stripe.com/v3/"></script>
@endpush
