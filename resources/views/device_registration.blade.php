<?php $general_setting = DB::table('general_settings')->find(1); ?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{{$general_setting->site_title}}</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <link rel="manifest" href="{{url('manifest.json')}}">
    <link rel="icon" type="image/png" href="{{url('public/logo', $general_setting->site_logo)}}" />
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="<?php echo asset('vendor/bootstrap/css/bootstrap.min.css') ?>" type="text/css">
    <!-- Google fonts - Roboto -->
    <link rel="preload" href="https://fonts.googleapis.com/css?family=Nunito:400,500,700" as="style"
        onload="this.onload=null;this.rel='stylesheet'">
    <noscript>
        <link href="https://fonts.googleapis.com/css?family=Nunito:400,500,700" rel="stylesheet">
    </noscript>
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="<?php echo asset('css/style.default.css') ?>" id="theme-stylesheet" type="text/css">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="<?php echo asset('css/custom-'.$general_setting->theme) ?>" type="text/css">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->


    <script type="text/javascript" src="<?php echo asset('vendor/jquery/jquery.min.js') ?>"></script>

</head>

<body>
    <div class="page login-page">
        <div class="container">
            <div class="form-outer text-center d-flex align-items-center">
                <div class="form-inner">
                    <div class="logo">
                        @if($general_setting->site_logo)
                        <img src="{{url('public/logo', $general_setting->site_logo)}}" width="110">
                        @else
                        <span>{{$general_setting->site_title}}</span>
                        @endif
                        <br>
                        <small>New Device Registration</small>
                    </div>
                    @if(session()->has('delete_message'))
                    <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close"
                            data-dismiss="alert" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>{{ session()->get('delete_message') }}</div>
                    @endif
                    @if(session()->has('error'))
                    <p>
                        <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert"
                                aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('error') }}</div>
                    </p>
                    @endif
                    <form method="POST" action="{{ route('device.registration') }}" id="login-form">
                        @csrf
                        <div class="form-group-material">
                            <input id="login-username" type="text" name="username" required class="input-material" value="">
                            <label for="login-username" class="label-material">{{trans('file.UserName')}}</label>

                        </div>

                        <div class="form-group-material">
                            <input id="login-password" type="password" name="password" required class="input-material"
                                value="">
                            <label for="login-password" class="label-material">{{trans('file.Password')}}</label>

                        </div>

                        <div class="form-group-material">
                            <input id="login-name" type="text" name="name" required class="input-material" value="">
                            <label for="login-name" class="label-material">Device Name</label>

                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Submit</button>
                    </form>

                </div>
                <div class="copyrights text-center">
                    <p>{{trans('file.Developed By')}} <span class="external">{{$general_setting->developed_by}}</span>
                    </p>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
<script>
    console.log(getCookie('device_token'));
    if(!getCookie('device_token')){
        setCookie('device_token',"{{ \Str::random(50) }}",36500)
    }

    function setCookie(cname, cvalue, exdays) {
    const d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    let expires = "expires="+d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
    }
    function getCookie(cname) {
    let name = cname + "=";
    let ca = document.cookie.split(';');
    for(let i = 0; i < ca.length; i++) { let c=ca[i]; while (c.charAt(0)==' ' ) { c=c.substring(1); } if
        (c.indexOf(name)==0) { return c.substring(name.length, c.length); } } return "" ;
    }
</script>
<script>
    if ('serviceWorker' in navigator ) {
        window.addEventListener('load', function() {
            navigator.serviceWorker.register('/salepro/service-worker.js').then(function(registration) {
                // Registration was successful
                console.log('ServiceWorker registration successful with scope: ', registration.scope);
            }, function(err) {
                // registration failed :(
                console.log('ServiceWorker registration failed: ', err);
            });
        });
    }
</script>
<script type="text/javascript">
    $('.admin-btn').on('click', function(){
        $("input[name='name']").focus().val('admin');
        $("input[name='password']").focus().val('admin');
    });

  $('.staff-btn').on('click', function(){
      $("input[name='name']").focus().val('staff');
      $("input[name='password']").focus().val('staff');
  });

  $('.customer-btn').on('click', function(){
      $("input[name='name']").focus().val('shakalaka');
      $("input[name='password']").focus().val('shakalaka');
  });
  // ------------------------------------------------------- //
    // Material Inputs
    // ------------------------------------------------------ //

    var materialInputs = $('input.input-material');

    // activate labels for prefilled values
    materialInputs.filter(function() { return $(this).val() !== ""; }).siblings('.label-material').addClass('active');

    // move label on focus
    materialInputs.on('focus', function () {
        $(this).siblings('.label-material').addClass('active');
    });

    // remove/keep label on blur
    materialInputs.on('blur', function () {
        $(this).siblings('.label-material').removeClass('active');

        if ($(this).val() !== '') {
            $(this).siblings('.label-material').addClass('active');
        } else {
            $(this).siblings('.label-material').removeClass('active');
        }
    });
</script>
