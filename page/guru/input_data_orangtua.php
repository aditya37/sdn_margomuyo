<?php 
session_start();
include('includes/config.php');
error_reporting(0);
    if(isset($_SESSION['login'])){ 
    
    //$user = $_SESSION['id_user'];


    if(isset($_POST['submit'])){

    	$nik  = $_POST['nik'];
        $nama_ortu  = $_POST['nama_ortu'];
        $jenis_kelamin = $_POST['jenis_kelamin'];
        $tgl_lahir  = $_POST['tgl_lahir'];
        $alamat     = $_POST['alamat'];
        $no_tlp     = $_POST['no_tlp'];

       $sql = "INSERT INTO tbl_orangtua (id_orangtua, nama_orangtua, alamat_orangtua, jenis_kelamin, tgl_lahir_orangtua, nomor_telepon) VALUES ('$nik', '$nama_ortu', '$alamat', '$jenis_kelamin', '$tgl_lahir', '$no_tlp')";
       
        $query=mysqli_query($con,$sql);
        if ($query) {
            $msg="User Created";
        }else{
            $error="Something went wrong . Please try again.";    
        }

    }

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Coderthemes">

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">
        <!-- App title -->
        <title>SDN MARGOMULYO 1 | Input Data Orangtua</title>

        <!-- Summernote css -->
        <link href="../plugins/summernote/summernote.css" rel="stylesheet" />

        <!-- Select2 -->
        <link href="../plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />

        <!-- Jquery filer css -->
        <link href="../plugins/jquery.filer/css/jquery.filer.css" rel="stylesheet" />
        <link href="../plugins/jquery.filer/css/themes/jquery.filer-dragdropbox-theme.css" rel="stylesheet" />

        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="../plugins/switchery/switchery.min.css">
        <script src="assets/js/modernizr.min.js"></script>
    </head>


    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
           <?php include('includes/topheader.php');?>
            <!-- ========== Left Sidebar Start ========== -->
             <?php include('includes/leftsidebar.php');?>
            <!-- Left Sidebar End -->



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
                                    <h4 class="page-title">Input Data Orang Tua </h4>
                                    <ol class="breadcrumb p-0 m-0">
                                        <li>
                                            <a href="#">Orangtua</a>
                                        </li>
                                        <li class="active">
                                            <a href="#">Input Data Orang Tua </a>
                                        </li>
                                    </ol>
                                    <div class="clearfix"></div>
                                </div>
							</div>
						</div>
                        <!-- end row -->

                    <div class="row">
                        <div class="col-sm-6">  
                            <!---Success Message--->  
                            <?php if($msg){ ?>
                            <div class="alert alert-success" role="alert">
                            <strong>Well done!</strong> <?php echo htmlentities($msg);?>
                            </div>
                            <?php } ?>

                            <!---Error Message--->
                            <?php if($error){ ?>
                            <div class="alert alert-danger" role="alert">
                            <strong>Oh snap!</strong> <?php echo htmlentities($error);?></div>
                            <?php } ?>
                            </div>
                    </div>
                        <div class="row">
                            <div class="col-md-10 col-md-offset-1">
                                <div class="p-6">
                                    <div class="">
                                    <form name="addpost" method="post">

                                    	<div class="form-group m-b-20">
                                        <label for="IK">NIK</label>
                                        <input type="text" class="form-control" id="NIK" name="nik" placeholder="NIK" required>
                                        </div>

                                        <div class="form-group m-b-20">
                                        <label for="nama_ortu">Nama Orangtua</label>
                                        <input type="text" class="form-control" id="nama_ortu" name="nama_ortu" placeholder="Nama Orangtua" required>
                                        </div>
                                            
                                        <div class="form-group m-b-20"> 
                                        <label for="alamat">Alamat</label>
                                        <textarea class="form-control" id="alamat" name="alamat" placeholder="Alamat" required></textarea>
                                        </div>
                                            
                                        <div class="form-group m-b-20">
                                        <label for="jenis_kelamin">Jenis Kelamin</label>
                                        <select class="form-control" name="jenis_kelamin" id="jenis_kelamin" required>
                                             <option value="Laki-laki">Laki-Laki</option>
                                             <option value="Perempuan">Perempuan</option>
                                        </select> 
                                        </div>


                                        <div class="form-group m-b-20">
                                        <label for="tgl_lahir">Tanggal Lahir</label>
                                        <input type="text" class="form-control" id="tgl_lahir" name="tgl_lahir" placeholder="Tanggal Lahir (yyyy/mm/dd)" required>
                                        </div>

                                         <div class="form-group m-b-20">
                                        <label for="no_tlp">Nomor Telepon</label>
                                        <input type="text" class="form-control" id="no_tlp" name="no_tlp" placeholder="Nomor Telepon" required>
                                        </div>

                                        <button type="submit" name="submit" class="btn btn-success waves-effect waves-light">Save</button>

                                    </form>
                                    </div>
                                </div> <!-- end p-20 -->
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->
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

        <!--Summernote js-->
        <script src="../plugins/summernote/summernote.min.js"></script>
        <!-- Select 2 -->
        <script src="../plugins/select2/js/select2.min.js"></script>
        <!-- Jquery filer js -->
        <script src="../plugins/jquery.filer/js/jquery.filer.min.js"></script>

        <!-- page specific js -->
        <script src="assets/pages/jquery.blog-add.init.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
        <script src="../plugins/switchery/switchery.min.js"></script>
        <!--Summernote js-->
        <script src="../plugins/summernote/summernote.min.js"></script>
    </body>
</html>
<?php }else{ header('location:http://localhost/sdn_margomulyo/login/'); }?>