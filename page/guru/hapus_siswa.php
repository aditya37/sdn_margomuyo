<?php 
session_start();
include('includes/config.php');
error_reporting(0);
if(isset($_SESSION['login'])){ 
    
    $id = $_GET['id'];

    $sql = "DELETE  FROM tbl_siswa WHERE nis = '$id'";

    $query = mysqli_query($con,$sql);

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">
        <!-- App title -->
        <title>SDN MARGOMULYO 1 <?= $user;?></title>

        <!--Morris Chart CSS -->
		<link rel="stylesheet" href="../plugins/morris/morris.css">

        <!-- jvectormap -->
        <link href="../plugins/jvectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet" />

        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="../plugins/switchery/switchery.min.css">

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <script src="assets/js/modernizr.min.js"></script>

    </head>


    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
           <?php include('includes/topheader.php');?>

            <!-- ========== Left Sidebar Start ========== -->
           <?php include('includes/leftsidebar.php');?>


            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">


                        <div class="row">
							<div class="col-xs-12">
								<div class="page-title-box">
                                    <h4 class="page-title">Data Siswa</h4>
                                    <ol class="breadcrumb p-0 m-0">
                                        <li>
                                            <a href="#">Admin</a>
                                        </li>
                                        <li>
                                            <a href="#">Siswa</a>
                                        </li>
                                        <li class="active">
                                            Data Siswa
                                        </li>
                                    </ol>
                                    <div class="clearfix"></div>
                                </div>
							</div>
						</div>
                        <!-- end row -->
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card-box">
                                <?php 
                                	if($query){
                                		echo "<div class='alert alert-info' role='alert'>Hapus Data Siswa Dengan NIS <?= .$id.;?> </div> <a href = 'http://localhost/sdn_margomulyo/login/page/guru/detail_siswa.php'>Kembali Ke Halaman Detail</a>";

                                	}else{
                                		echo "<div class='alert alert-info' role='alert'>Hapus Data Siswa Dengan NIS <?= $id;?> </div>";
                                	}
                                 ?>
                                 
                                </div>
                            </div>            
                        </div>

                    </div> <!-- container -->

                </div> <!-- content -->

       <?php include('includes/footer.php');?>

            </div>
            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


        </div>
        <!-- END wrapper -->



        <script>
            var resizefunc = [];
        </script>

        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/detect.js"></script>
        <script src="assets/js/fastclick.js"></script>
        <script src="assets/js/jquery.blockUI.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>
        <script src="../plugins/switchery/switchery.min.js"></script>

        <!-- CounterUp  -->
        <script src="../plugins/waypoints/jquery.waypoints.min.js"></script>
        <script src="../plugins/counterup/jquery.counterup.min.js"></script>

        <!--Morris Chart-->
		<script src="../plugins/morris/morris.min.js"></script>
		<script src="../plugins/raphael/raphael-min.js"></script>

        <!-- Load page level scripts-->
        <script src="../plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
        <script src="../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <script src="../plugins/jvectormap/gdp-data.js"></script>
        <script src="../plugins/jvectormap/jquery-jvectormap-us-aea-en.js"></script>


        <!-- Dashboard Init js -->
		<script src="assets/pages/jquery.blog-dashboard.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

    </body>
</html>
<?php }else{ header('location:http://localhost/sdn_margomulyo/login/');} ?>