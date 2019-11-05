<?php 
session_start();
include('includes/config.php');
error_reporting(0);
if(isset($_SESSION['login'])){ 
    
    $user = $_SESSION['username'];

    $sql = "SELECT  tbl_nilai.pkn,tbl_nilai.bindo,tbl_nilai.mtk,tbl_nilai.ipa,tbl_nilai.ips,tbl_nilai.sbdp,tbl_nilai.pjok,tbl_siswa.nama_siswa,tbl_nilai.semester,tbl_nilai.S,tbl_nilai.I,tbl_nilai.A FROM tbl_nilai,tbl_siswa WHERE tbl_nilai.nis = tbl_siswa.nis AND tbl_siswa.nis = '$user' AND tbl_nilai.semester = 'Semester 1'";


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
        <title> SDN MARGOMULYO 1 | DETAIL NILAI</title>

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
                                    <h4 class="page-title">Data NIlai</h4>
                                    <ol class="breadcrumb p-0 m-0">
                                        <li>
                                            <a href="#">Admin</a>
                                        </li>
                                        <li>
                                            <a href="#">Nilai</a>
                                        </li>
                                        <li class="active">
                                            Data Nilai
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
                                    <div class="table-responsive">
                            <table class="table table-colored table-centered table-inverse m-0">
                                    <thead>
                                        <tr> 
                                        <th>Nama</th>                                            
                                        <th>Pendidikan Kewarganegaraan</th>
                                        <th>Bahasa Indonesia</th>
                                        <th>Matematika</th>
                                        <th>Ilmu Pengetahuan Alam</th>
                                        <th>Ilmu Pengetahuan Sosial</th>
                                        <th>Seni Budaya</th>
                                        <th>Penjaskes</th>
                                        <th>Sakit</th>
                                        <th>Izin</th>
                                        <th>Alfa</th>
                                        <th>Semester</th>
                                        </tr>
                                    </thead>
                                <tbody>
                                    <?php while($data = mysqli_fetch_array($query)){ $no++;?>
                                    <tr>
                                    <td><?= $data['nama_siswa'];?></td>
                                    <td><?= $data['pkn'];?></td>
                                    <td><?= $data['bindo'];?></td>
                                    <td><?= $data['mtk'];?></td>
                                    <td><?= $data['ipa'];?></td>
                                    <td><?= $data['ips'];?></td>
                                    <td><?= $data['sbdp'];?></td>
                                    <td><?= $data['pjok'];?></td>
                                    <td><?= $data['S'];?></td>
                                    <td><?= $data['I'];?></td>
                                    <td> <?= $data['A'];?></td>
                                    <td><?= $data['semester'];?></td>
                                    </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                                    </div>
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