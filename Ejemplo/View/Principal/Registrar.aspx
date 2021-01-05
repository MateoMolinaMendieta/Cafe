<%@ Page Language="C#" AutoEventWireup="true" enableEventValidation="false" CodeBehind="Registrar.aspx.cs" Inherits="Ejemplo.View.Principal.Registrar" %>

<<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="https://material-dashboard-pro-laravel.creative-tim.com/material/img/apple-icon.png">
    <link rel="icon" type="image/png" href="https://material-dashboard-pro-laravel.creative-tim.com/material/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Registrarse
    </title>

    <!-- Extra details for Live View on GitHub Pages -->
    <!-- Canonical SEO -->
    <link rel="canonical" href="https://www.creative-tim.com/product/material-dashboard-pro-laravel" />


    <!--  Social tags      -->
    <meta name="keywords" content="creative tim, html dashboard, laravel, html css dashboard laravel, web dashboard, bootstrap 4 dashboard laravel, bootstrap 4, css3 dashboard, bootstrap 4 admin laravel, material ui dashboard bootstrap 4 laravel, frontend, responsive bootstrap 4 dashboard, material design, material laravel bootstrap 4 dashboard">
    <meta name="description" content="Download Material Dashboard PRO Laravel, a Premium Frontend Preset for Laravel developed by Creative Tim and UPDIVISION. Over 200 components, see the live demo on our website and join over 700.000 creatives!">


    <!-- Schema.org markup for Google+ -->
    <meta itemprop="name" content="Material Dashboard Pro Laravel by Creative Tim & UPDIVISION"/>
    <meta itemprop="description" content="Download Material Dashboard PRO Laravel, a Premium Frontend Preset for Laravel developed by Creative Tim and UPDIVISION. Over 200 components, see the live demo on our website and join over 700.000 creatives!">

    <meta itemprop="image" content="https://s3.amazonaws.com/creativetim_bucket/products/158/thumb/opt_mdp_laravel_thumbnail.jpg">


    <!-- Twitter Card data -->
    <meta name="twitter:card" content="product">
    <meta name="twitter:site" content="@creativetim">
    <meta name="twitter:title" content="Material Dashboard Pro Laravel by Creative Tim & UPDIVISIONm">

    <meta name="twitter:description" content="Download Material Dashboard PRO Laravel, a Premium Frontend Preset for Laravel developed by Creative Tim and UPDIVISION. Over 200 components, see the live demo on our website and join over 700.000 creatives!">
    <meta name="twitter:creator" content="@creativetim">
    <meta name="twitter:image" content="https://s3.amazonaws.com/creativetim_bucket/products/158/thumb/opt_mdp_laravel_thumbnail.jpg">


    <!-- Open Graph data -->
    <meta property="fb:app_id" content="655968634437471">
    <meta property="og:title" content="Material Dashboard Pro Laravel by Creative Tim & UPDIVISION" />
    <meta property="og:type" content="article" />
    <meta property="og:url" content="https://material-dashboard-pro-laravel.creative-tim.com/" />
    <meta property="og:image" content="https://s3.amazonaws.com/creativetim_bucket/products/158/thumb/opt_mdp_laravel_thumbnail.jpg" />
    <meta property="og:description" content="Download Material Dashboard PRO Laravel, a Premium Frontend Preset for Laravel developed by Creative Tim and UPDIVISION. Over 200 components, see the live demo on our website and join over 700.000 creatives!" />
    <meta property="og:site_name" content="Creative Tim" />

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <!-- CSS Files -->
    <link href="https://material-dashboard-pro-laravel.creative-tim.com/material/css/material-dashboard.css?v=2.1.2" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="https://material-dashboard-pro-laravel.creative-tim.com/material/demo/demo.css" rel="stylesheet" />

    <!-- Google Tag Manager -->
    <script>(function (w, d, s, l, i) {
    w[l] = w[l] || []; w[l].push({
        'gtm.start':
            new Date().getTime(), event: 'gtm.js'
    }); var f = d.getElementsByTagName(s)[0],
    j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
    'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
})(window, document, 'script', 'dataLayer', 'GTM-NKDMSK6');</script>
    <!-- End Google Tag Manager -->

    <script>
        // Facebook Pixel Code Don't Delete
        ! function (f, b, e, v, n, t, s) {
            if (f.fbq) return;
            n = f.fbq = function () {
                n.callMethod ?
                  n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            };
            if (!f._fbq) f._fbq = n;
            n.push = n;
            n.loaded = !0;
            n.version = '2.0';
            n.queue = [];
            t = b.createElement(e);
            t.async = !0;
            t.src = v;
            s = b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t, s)
        }(window,
          document, 'script', '//connect.facebook.net/en_US/fbevents.js');
        try {
            fbq('init', '111649226022273');
            fbq('track', "PageView");
        } catch (err) {
            console.log('Facebook Track Error:', err);
        }
    </script>
</head>
<body class="off-canvas-sidebar">
    <style>
        #ofBar {
            display: none;
        }
    </style>
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
        height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->
    <noscript>
        <img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=111649226022273&ev=PageView&noscript=1" />
      </noscript>
    <form runat="server">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top text-white">
            <div class="container">
                <div class="navbar-wrapper">
                    <a class="navbar-brand">FINCA LOS SALADOS</a>
                </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end">
                    <ul class="navbar-nav">

                        <li class="nav-item active">
                            <a href="Registrar.aspx" class="nav-link">
                                <i class="material-icons">person_add</i> Registrarse
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="Inicio.aspx" class="nav-link">
                                <i class="material-icons">fingerprint</i> Iniciar Sesion
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="https://material-dashboard-pro-laravel.creative-tim.com/lock" class="nav-link">
                                <i class="material-icons">lock_open</i> Lock
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="wrapper wrapper-full-page">
            <div class="page-header register-page header-filter" filter-color="black" style="background-image: url('../../Imagenes/cafe.jpg'); width: 100%; height: 30%; background-size: cover; background-position: top center; align-items: center;">

                <div class="container">
                    <div class="row">
                        <div class="col-md-8 ml-auto mr-auto">
                            <div class="card card-signup">
                                <h2 class="card-title text-center">Registrese</h2>
                                <div class="card-body">
                                    <div class="row">

                                        <div class="col-md-6 mr-auto offset-3">

                                            <form class="form" method="POST" action="https://material-dashboard-pro-laravel.creative-tim.com/register">
                                                <input type="hidden" name="_token" value="0szeWVG7jOtcVhfhD9LaSnMl6lUhwVijYfcnyyzS">
                                                <div class="has-default mb-3">
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text">
                                                                <i class="material-icons">face</i>
                                                            </span>
                                                        </div>
                                                        <input type="text" id="Cedula" runat="server" name="cedula" class="form-control" placeholder="Cedula..." value="" required>
                                                    </div>
                                                </div>
                                                <div class="has-default mb-3">
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text">
                                                                <i class="material-icons">face</i>
                                                            </span>
                                                        </div>
                                                        <input type="text" id="Nombre" runat="server" name="name" class="form-control" placeholder="Nombre..." value="" required>
                                                    </div>
                                                </div>
                                                <div class="has-default mb-3">
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text">
                                                                <i class="material-icons">face</i>
                                                            </span>
                                                        </div>
                                                        <input type="text" id="Apellidos" runat="server" name="name" class="form-control" placeholder="Apellidos..." value="" required>
                                                    </div>
                                                </div>
                                                <div class="has-default mb-3">
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text">
                                                                <i class="material-icons">mail</i>
                                                            </span>
                                                        </div>
                                                        <input type="text" id="Correo" runat="server" class="form-control" name="email" placeholder="Email..." value="" required>
                                                    </div>
                                                </div>
                                                <%-- <div class="has-default mb-3">
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">
                                                            <i class="material-icons">recent_actors</i>
                                                        </span>
                                                    </div>
                                                    <select class="selectpicker" style="display: inline-block" name="user_type" data-style="select-with-transition" title="" data-size="100">
                                                        <option value="" selected hidden>User Type</option>
                                                        <option value="1">Admin</option>
                                                        <option value="2">Creator</option>
                                                        <option value="3">Member</option>
                                                    </select>
                                                </div>
                                            </div>--%>
                                                <div class="has-default mb-3">
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text">
                                                                <i class="material-icons">lock_outline</i>
                                                            </span>
                                                        </div>
                                                        <input type="text" runat="server" id="celular" name="celu" placeholder="celular..." class="form-control" required>
                                                    </div>
                                                </div>
                                                <div class="has-default mb-3">
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text">
                                                                <i class="material-icons">lock_outline</i>
                                                            </span>
                                                        </div>
                                                        <input type="password" runat="server" id="Contrasena" name="password" class="form-control" placeholder="Password..." required>
                                                    </div>
                                                </div>
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="checkbox" name="policy" value="1" checked>
                                                        <span class="form-check-sign">
                                                            <span class="check"></span>
                                                        </span>
                                                        I agree with the  <a href="#">terms and conditions</a>
                                                    </label>
                                                </div>
                                                <div class="text-center">
                                                    <asp:Button ID="Button1" CssClass="btn btn-primary btn-round mt-4" runat="server" Text="Registrar" OnClick="Button1_Click" />
                                                    <%--<button type="submit" class="btn btn-primary btn-round mt-4" runat="server" OnClick="Registro">Registrar </button>--%>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <footer class="footer">
                    <div class="container">
                        <nav class="float-left">
                        </nav>
                        <div class="copyright float-right">
                            &copy;
    <script>
        document.write(new Date().getFullYear())
    </script>
                            , made with <i class="material-icons">favorite</i> by
    <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a> and <a href="https://www.updivision.com" target="_blank">UPDIVISION</a> for a better web.
                        </div>
                    </div>
                </footer>
            </div>
        </div>
    </form>




    <!--   Core JS Files   -->
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/core/jquery.min.js"></script>
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/core/popper.min.js"></script>
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/core/bootstrap-material-design.min.js"></script>
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/plugins/perfect-scrollbar.jquery.min.js"></script>
    <!-- Plugin for the momentJs  -->
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/plugins/moment.min.js"></script>
    <!--  Plugin for Sweet Alert -->
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/plugins/sweetalert2.js"></script>
    <!-- Forms Validations Plugin -->
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/plugins/jquery.validate.min.js"></script>
    <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/plugins/jquery.bootstrap-wizard.js"></script>
    <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/plugins/bootstrap-selectpicker.js"></script>
    <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/plugins/bootstrap-datetimepicker.min.js"></script>
    <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/plugins/jquery.dataTables.min.js"></script>
    <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/plugins/bootstrap-tagsinput.js"></script>
    <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/plugins/jasny-bootstrap.min.js"></script>
    <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/plugins/fullcalendar.min.js"></script>
    <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/plugins/jquery-jvectormap.js"></script>
    <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/plugins/nouislider.min.js"></script>
    <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
    <!-- Library for adding dinamically elements -->
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/plugins/arrive.min.js"></script>
    <!--  Google Maps Plugin    -->
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
    <!-- Chartist JS -->
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/plugins/chartist.min.js"></script>
    <!--  Notifications Plugin    -->
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/plugins/bootstrap-notify.js"></script>
    <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/material-dashboard.js?v=2.1.0" type="text/javascript"></script>
    <!-- Material Dashboard DEMO methods, don't include it in your project! -->
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/demo/demo.js"></script>
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/js/application.js"></script>
    <script src="https://material-dashboard-pro-laravel.creative-tim.com/material/demo/jquery.sharrre.js"></script>
    <script>
        $(document).ready(function () {

            $('#facebook').sharrre({
                share: {
                    facebook: true
                },
                enableHover: false,
                enableTracking: false,
                enableCounter: false,
                click: function (api, options) {
                    api.simulateClick();
                    api.openPopup('facebook');
                },
                template: '<i class="fab fa-facebook-f"></i> Facebook',
                url: 'https://material-dashboard-pro-laravel.creative-tim.com/login'
            });

            $('#google').sharrre({
                share: {
                    googlePlus: true
                },
                enableCounter: false,
                enableHover: false,
                enableTracking: true,
                click: function (api, options) {
                    api.simulateClick();
                    api.openPopup('googlePlus');
                },
                template: '<i class="fab fa-google-plus"></i> Google',
                url: 'https://material-dashboard-pro-laravel.creative-tim.com/login'
            });

            $('#twitter').sharrre({
                share: {
                    twitter: true
                },
                enableHover: false,
                enableTracking: false,
                enableCounter: false,
                buttons: {
                    twitter: {
                        via: 'CreativeTim'
                    }
                },
                click: function (api, options) {
                    api.simulateClick();
                    api.openPopup('twitter');
                },
                template: '<i class="fab fa-twitter"></i> Twitter',
                url: 'https://material-dashboard-pro-laravel.creative-tim.com/login'
            });

        });
    </script>
    <script>
        $(document).ready(function () {
            md.checkFullPageBackgroundImage();
        });
    </script>

</body>

</html>
