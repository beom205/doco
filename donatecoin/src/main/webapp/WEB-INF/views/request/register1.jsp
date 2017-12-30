<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Developed By M Abdur Rokib Promy">
    <meta name="author" content="cosmic">
    <meta name="keywords" content="Bootstrap 3, Template, Theme, Responsive, Corporate, Business">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>
      Acme | Home
    </title>

    <!-- Bootstrap core CSS -->
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="../resources/css/theme.css" rel="stylesheet">
    <link href="../resources/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/flexslider.css"/>
    <link href="assets/bxslider/jquery.bxslider.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/animate.css">
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>


    <!-- Custom styles for this template -->
    <link href="../resources/css/style.css" rel="stylesheet">
    <link href="../resources/css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js">
    </script>
    <script src="js/respond.min.js">
    </script>
    <![endif]-->
</head>
<style>
    .address{
        margin-bottom: 50px;
        margin-right: 150px;
        margin-left: 150px;
    }

</style>
<body>

<!--breadcrumbs start-->
<div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-sm-4">
                <h1>
                    Donation Request
                </h1>
            </div>
            <div class="col-lg-8 col-sm-8">
                <ol class="breadcrumb pull-right">
                    <li>
                        <a href="#">
                            Home
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            Pages
                        </a>
                    </li>
                    <li class="active">
                        Donation Request
                    </li>
                </ol>
            </div>
        </div>
    </div>
</div>
<!--breadcrumbs end-->



<!--container start-->
<div class="container">

    <div class="address">
        <h3>
            Register
        </h3><hr>
        <div class="contact-form">
            <form role="form">
                <div class="form-group">
                    <label for="title">
                        Title
                    </label>
                    <input type="text" placeholder="" id="title" class="form-control">
                </div>
                <div class="form-group">
                    <label for="content">
                        Content
                    </label>
                    <textarea placeholder="" rows="10" class="form-control">
                </textarea>
                </div>
                <div class="row">
                    <div class="addressmap">
                        <div class="contact-map">
                            <div id="map-canvas" style="width: 97%; height: 300px">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="address">
                        Address
                    </label>
                    <input type="text" placeholder="" id="address" class="form-control">
                </div>


                <div class="form-group">
                    <label for="exampleInputFile">File 선택</label>
                    <input type="file" id="exampleInputFile">
                    <p class="help-block">Example block-level help text here.</p>
                </div>

                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                <button class="btn btn-info" type="submit">
                    확인
                </button>
                <button class="btn btn-info" type="submit">
                    취소
                </button>
            </form>

        </div>
    </div>
</div>

<!-- js placed at the end of the document so the pages load faster -->
<script src="js/jquery.js">
</script>
<script src="js/bootstrap.min.js">
</script>
<script type="text/javascript" src="js/hover-dropdown.js">
</script>
<script type="text/javascript" src="assets/bxslider/jquery.bxslider.js">
</script>


<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&AMP;sensor=false">
</script>

<!--common script for all pages-->
<script src="js/common-scripts.js">
</script>
<script src="js/wow.min.js">
</script>
<script>
    wow = new WOW(
        {
            boxClass:     'wow',      // default
            animateClass: 'animated', // default
            offset:       0          // default
        }
    )
    wow.init();
</script>


<script>
    $(document).ready(function() {
            //Set the carousel options
            $('#quote-carousel').carousel({
                    pause: true,
                    interval: 4000,
                }
            );
        }
    );

    //google map
    function initialize() {
        var myLatlng = new google.maps.LatLng(51.508742,-0.120850);
        var mapOptions = {
            zoom: 5,
            center: myLatlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
        var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title: 'Contact'
            }
        );
    }
    google.maps.event.addDomListener(window, 'load', initialize);



</script>

</body>
</html>
