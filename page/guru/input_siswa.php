<?php
session_start();
include('includes/config.php');
error_reporting(0);
if(isset($_SESSION['login'])){ 
$user = $_SESSION['id_user'];

    if(isset($_POST['submit'])){

    
    $nis          = $_POST['nis'];
    $nisn         = $_POST['nisn'];
    $nama_siswa   = $_POST['nama_siswa'];
    $tempat_lahir = $_POST['tmpt_lahir'];
    $tgl_lahir    = $_POST['tgl_lahir'];
    $alamat       = $_POST['alamat'];
    $jenis_kelamin= $_POST['jenis_kelamin'];
    $agama        = $_POST['agama'];
    $id_orangtua  = $_POST['id_orangtua'];
    

    $sql = "INSERT INTO tbl_siswa (nis, nisn, nama_siswa, tempat_lahir, tanggal_lahir, alamat, jenis_kelamin, agama, id_rombel, id_orangtua) VALUES('$nis','$nisn','$nama_siswa','$tempat_lahir','$tgl_lahir','$alamat','$jenis_kelamin','$agama','$user','$id_orangtua')"; 
    $query= mysqli_query($con,$sql);

        if($query){
        $msg="Data Inputed";
        }else{
        $error="Something went wrong . Please try again.";    
        } 
    }
?>
    
<!DOCTYPE html>
<html lang="en">
    <head>

        <title>SDN MARGOMULYO 1 | input data guru</title>

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
<!-- Top Bar End -->


<!-- ========== Left Sidebar Start ========== -->
           <?php include('includes/leftsidebar.php');?>
 <!-- Left Sidebar End -->

            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">


                        <div class="row">
                            <div class="col-xs-12">
                                <div class="page-title-box">
                                    <h4 class="page-title">Input Siswa</h4>
                                    <ol class="breadcrumb p-0 m-0">
                                        <li>
                                            <a href="#">Admin</a>
                                        </li>
                                        <li>
                                            <a href="#">Siswa </a>
                                        </li>
                                        <li class="active">
                                            Input Data Siswa
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
                                    <h4 class="m-t-0 header-title"><b>Input Data Siswa</b></h4>
                                    <hr />
                                


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
                                        <div class="col-md-9">
                                            <form class="form-horizontal" name="category" method="post">
                                                <div class="form-group">
                                                    <label class="col-md-2 control-label" for="nis">NIS</label>
                                                    <div class="col-md-10">
                                                        <input type="text" class="form-control" value="" id="nis" name="nis" required>
                                                    </div>
                                                </div>
                                         
                                                <div class="form-group">
                                                    <label class="col-md-2 control-label" for="nisn">NISN</label>
                                                    <div class="col-md-10">
                                                       <input type="text" class="form-control" value="" id="nisn" name="nisn" required>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-md-2 control-label">Nama Siswa</label>
                                                    <div class="col-md-10">
                                                        <input type="text" class="form-control" value="" name="nama_siswa" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-2 control-label">Tempat Lahir</label>
                                                    <div class="col-md-10">
                                                        <input type="text" class="form-control" value="" name="tmpt_lahir" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-2 control-label">Tanggal Lahir</label>
                                                    <div class="col-md-10">
                                                        <input type="text" class="form-control" value="" name="tgl_lahir" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-2 control-label">Alamat</label>
                                                    <div class="col-md-10">
                                                       <textarea class="form-control" name="alamat">
                                                           
                                                       </textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-2 control-label">Jenis Kelamin</label>
                                                    <div class="col-md-10">
                                                         <select name="jenis_kelamin" class="form-control">
                                                            <option value="Laki-Laki">Laki-Laki</option>
                                                            <option value="Perempuan">Perempuan</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-2 control-label">Agama</label>
                                                    <div class="col-md-10">
                                                        <select name="agama" class="form-control">
                                                            <option value="Islam">Islam</option>
                                                            <option value="Kristen">Kristen</option>
                                                            <option value="Hindu">Hindu</option>
                                                            <option value="Buddha">Buddha</option>
                                                            <option value="Khonghucu">Khonghucu</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-2 control-label">NIK Orangtua</label>
                                                    <div class="col-md-10">
                                                        <input type="text" class="form-control" value="" name="id_orangtua" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-2 control-label">&nbsp;</label>
                                                    <div class="col-md-10">
                                                  
                                                <button type="submit" class="btn btn-custom waves-effect waves-light btn-md" name="submit">
                                                    Submit
                                                </button>
                                                    </div>
                                                </div>

                                            </form>
                                        </div>
                                    </div>                    
                              </div>
                            </div>
                        </div>
                        <!-- end row -->


                    </div> <!-- container -->

                </div> <!-- content -->

<?php include('includes/footer.php');?>

            </div>
        </div>

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

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

    </body>
</html>
<?php
}else{
header('location:http://localhost/sdn_margomulyo/login/');
}
?>

