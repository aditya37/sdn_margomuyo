<?php
session_start();
include('includes/config.php');
error_reporting(0);
if(isset($_SESSION['login'])){
$user = $_SESSION['id_user'];

    if(isset($_POST['submit'])){


    $nis          = $_POST['nis'];
    $pkn          = $_POST['pkn'];
    $bindo        = $_POST['bindo'];
    $mtk          = $_POST['mtk'];
    $ipa          = $_POST['ipa'];
    $ips          = $_POST['ips'];
    $sbdp         = $_POST['sbdp'];
    $pjok         = $_POST['pjok'];
    $sakit        = $_POST['sakit'];
    $izin         = $_POST['izin'];
    $alfa         = $_POST['alfa'];
    $semester     = $_POST['semester'];


    #$sql = "INSERT INTO tbl_nilai (nis, pkn, bindo, mtk, ipa, ips, sbdp, pjok,semester) VALUES('$nis','$pkn','$bindo','$mtk','$ipa','$ips','$sbdp','$pjok','$semester')";
   //$sql = "INSERT INTO tbl_nilai (id_nilai, pkn, bindo, mtk, ipa, ips, sbdp, pjok, semester, S,I,A,nis,id_rombel) VALUES (NULL, '$pkn', '$bindo', '$mtk', '$ipa', '$ips', '$sbdp', '$pjok', '$semester', '$sakit','$izin','$alfa','$nis','$user')";
   $update ="UPDATE tbl_nilai SET
             pkn='$pkn',
             bindo='$bindo',
             mtk='$mtk',
             ipa='$ipa',
             ips='$ips',
             sbdp='$sbdp',
             pjok='$pjok',
             semester='$semester',
             S='$sakit',
             I='$izin',
             A='$alfa',
             nis='$nis',
            WHERE user='$id_user'";
    $query= mysqli_query($con,$update);

        if($query){
        $msg="Data Update";
        }else{
        $error="Something went wrong . Please try again.";
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
    <head>

        <title>SDN MARGOMULYO 1 | input data nilai</title>

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
                                    <h4 class="page-title">Input Nilai</h4>
                                    <ol class="breadcrumb p-0 m-0">
                                        <li>
                                            <a href="#">Admin</a>
                                        </li>
                                        <li>
                                            <a href="#">Nilai </a>
                                        </li>
                                        <li class="active">
                                            Input Data Nilai
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
                                    <h4 class="m-t-0 header-title"><b>Input Data Nilai</b></h4>
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
                                                    <label class="col-md-2 control-label" for="pkn">Pendidikan kewarganegaraan</label>
                                                    <div class="col-md-10">
                                                       <input type="text" class="form-control" value="" id="pkn" name="pkn" required>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-md-2 control-label">Bahasa Indonesia</label>
                                                    <div class="col-md-10">
                                                        <input type="text" class="form-control" value="" name="bindo" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-2 control-label">Matematikar</label>
                                                    <div class="col-md-10">
                                                        <input type="text" class="form-control" value="" name="mtk" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-2 control-label">Ilmu Pengetahuan Alam</label>
                                                    <div class="col-md-10">
                                                        <input type="text" class="form-control" value="" name="ipa" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-2 control-label">Ilmu Pengetahuan Sosial</label>
                                                    <div class="col-md-10">
                                                        <input type="text" class="form-control" value="" name="ips" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-2 control-label">Seni Budaya</label>
                                                    <div class="col-md-10">
                                                        <input type="text" class="form-control" value="" name="sbdp" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-2 control-label">Penjaskes</label>
                                                    <div class="col-md-10">
                                                        <input type="text" class="form-control" value="" name="pjok" required>
                                                    </div>
                                                </div>
                                                 <div class="form-group">
                                                    <label class="col-md-2 control-label">Sakit</label>
                                                    <div class="col-md-10">
                                                        <input type="text" class="form-control" value="" name="sakit" required>
                                                    </div>
                                                </div>
                                                 <div class="form-group">
                                                    <label class="col-md-2 control-label">Izin</label>
                                                    <div class="col-md-10">
                                                        <input type="text" class="form-control" value="" name="izin" required>
                                                    </div>
                                                </div>
                                                 <div class="form-group">
                                                    <label class="col-md-2 control-label">Alfa</label>
                                                    <div class="col-md-10">
                                                        <input type="text" class="form-control" value="" name="alfa" required>
                                                    </div>
                                                </div>
                                                    <div class="form-group">
                                                    <label class ="col-md-2 control-label">Semester</label>
                                                    <div class="col-md-10">
                                                        <select name="semester" class="form-control">
                                                            <option value="Semester 1">Semester 1</option>
                                                            <option value="Semester 2">Semester 2</option>
                                                        </select>
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
