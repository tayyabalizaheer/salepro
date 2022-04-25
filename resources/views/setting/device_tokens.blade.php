@extends('layout.main') @section('content')

@if($errors->has('name'))
<div class="alert alert-danger alert-dismissible text-center">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
            aria-hidden="true">&times;</span></button>{{ $errors->first('name') }}
</div>
@endif
@if(session()->has('message'))
<div class="alert alert-success alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert"
        aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('message') }}</div>
@endif
@if(session()->has('not_permitted'))
<div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert"
        aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('not_permitted') }}</div>
@endif

<section>
    <div class="p-5">
        <div class="table-responsive">
            <table id="device-table" class="table table-hover">
                <thead>
                    <tr>
                        <th class="not-exported"></th>
                        <th>{{trans('file.name')}}</th>
                        <th class="not-exported">{{trans('file.action')}}</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($device_tokens as $key=>$device_token)
                    <tr>
                        <td>
                            {{$key + 1}}
                        </td>
                        <td>
                            {{$device_token->name}}
                        </td>
                        <td>
                            @if(auth()->user()->role_id == 1)
                            {{ Form::open(['route' => ['register.devices.delete', $device_token->id], 'method' => 'POST'] ) }}
                            <button type="submit" class="btn btn-link" onclick="return confirmDelete()"><i class="dripicons-trash"></i>
                            </button>
                            {{ Form::close() }}
                            @endif
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <div class="d-flex justify-content-center">
            @include('pagination', ['paginator' => $device_tokens])
        </div>
    </div>

</section>

@endsection

@push('scripts')
<script type="text/javascript">

	 function confirmDelete() {
        if (confirm("Are you sure want to delete?")) {
            return true;
        }
        return false;
    }

    $('#device-table').DataTable({
        "paging": false,
        "info": false
    });
</script>
@endpush
