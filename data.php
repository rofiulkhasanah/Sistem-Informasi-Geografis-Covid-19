<?php include 'header.php';
include 'config.php';

$query = 'SELECT * FROM data_covid ORDER BY tanggal DESC LIMIT 1';
$sql = mysqli_query($con, $query);

$query_kecamatan = 'SELECT * FROM `data_covid_kecamatan` ORDER BY tanggal DESC LIMIT 5';
$sql_kecamatan = mysqli_query($con, $query_kecamatan);

?>
   
<section class="hero-wrap" style="height: 200px; background-image: url('images/bgg.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end">
                <div class="col-md-9 ftco-animate pb-5">
                    <p style="margin-top: 70px;" class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html">Beranda <i class="ion-ios-arrow-forward"></i></a></span> <span>Data <i class="ion-ios-arrow-forward"></i></span></p>
                    <h3 style="color: white" class="mb-0 bread">Data</h3>
                </div>
            </div>
        </div>
    </section>

    <br>
    <br>
    <section>
        <div class="container">
            <a href="data_lengkap.php"><h5 style="float: right; color:#fdbe34;">Lihat Data Harian &rarr;</h5></a>
        </div>
    </section>
    <br>
    <br>

    <section>
        <div class="container">
        <h3 align="center">Jumlah Kasus COVID-19 di Kota Malang</h3>
        <hr>
            <div class="row justify-content-md-center">
                <br>
                <?php while ($row = mysqli_fetch_assoc($sql)) {
    ?>
                <!-- Mulai Terkonfirmasi -->
                <div class="col">
                    <div class="card" style="width: 12rem; background: #680000;" >
                        <div class="card-body">
                            <p class="card-title" style="color: #ffff; text-align: center; font-size: 50px"><?php echo $row['Terkonfirmasi']; ?></p>
                            <hr color="#dbd5d5">
                            <p class="" style="text-align: center; color:#ffeae8;">Terkonfirmasi</p>
                        </div>
                    </div>
                    <br>
                </div>
                <!-- END Terkonfirmasi -->
                
                <!-- Mulai PDP -->
                <div class="col">
                    <div class="card" style="width: 12rem; background: #680000;" >
                        <div class="card-body">
                            <p class="card-title" style="color: #ffff; text-align: center; font-size: 50px"><?php echo $row['PDP']; ?></p>
                            <hr color="#dbd5d5">
                            <p class="" style="text-align: center; color:#ffeae8;">PDP</p>
                        </div>
                    </div>
                    <br>
                </div>
                <!-- END PDP -->

                <!-- Mulai ODP -->
                  <div class="col">
                    <div class="card" style="width: 12rem; background: #680000;" >
                        <div class="card-body">
                            <p class="card-title" style="color: #ffff; text-align: center; font-size: 50px"><?php echo $row['ODP']; ?></p>
                            <hr color="#dbd5d5">
                            <p class="" style="text-align: center; color:#ffeae8;">ODP</p>
                        </div>
                    </div>
                    <br>
                </div>
                <!-- END ODP -->

                <!-- Mulai Sembuh -->
                <div class="col">
                    <div class="card" style="width: 12rem; background: #680000;" >
                        <div class="card-body">
                            <p class="card-title" style="color: #ffff; text-align: center; font-size: 50px"><?php echo $row['Sembuh']; ?></p>
                            <hr color="#dbd5d5">
                            <p class="" style="text-align: center; color:#ffeae8;">Sembuh</p>
                        </div>
                    </div>
                    <br>
                </div>
                <!-- END Sembuh -->

                <!-- Mulai Meninggal -->
                <div class="col">
                    <div class="card" style="width: 12rem; background: #680000;" >
                        <div class="card-body">
                            <p class="card-title" style="color: #ffff; text-align: center; font-size: 50px"><?php echo $row['Meninggal']; ?></p>
                            <hr color="#dbd5d5">
                            <p class="" style="text-align: center; color:#ffeae8;">Meninggal</p>
                        </div>
                    </div>
                    <br>
                </div>
                <!-- END Meninggal -->
                <?php
}
                ?>
                
            </div>
            <hr>
        </div>
    </div>
    </section>

    <section>
    	<div class="container-fluid px-md-5">
        <h3 align="center">Jumlah Kasus COVID-19 di Kota Malang berdasarkan Kecamatan</h3>
        <br>
        <div class="container">
        <div class="row justify-content-md-center">
            <?php
            while ($row_kecamatan = mysqli_fetch_assoc($sql_kecamatan)) {
                ?>
        	<div class="col-lg-2 col-sm-6">
        		<div class="block-2 ftco-animate">
	            <div class="flipper">
	              <div class="front" style="background-image: url(/images/team-1.jpg);">
	                <div class="box">
	                  <p style="font-size: 16px; text-align: center;"><?php echo $row_kecamatan['deskripsi']; ?></p>
	                </div>
	              </div>
	              <div class="back">
	                <!-- back content -->
                    <br>
                      <h6 align = "center">  ODP </h6>
                      <h4 align = "center"><?php echo $row_kecamatan['ODP']; ?></h4>
                      <h6 align = "center"> PDP </h6>
                      <h4 align = "center"><?php echo $row_kecamatan['PDP']; ?></h4>
                      <h6 align = "center"> Terkonfirmasi </h6>
                      <h4 align = "center"><?php echo $row_kecamatan['Terkonfirmasi']; ?></h4>
                      <h6 align = "center"> Sembuh </h6>
                      <h4 align = "center"><?php echo $row_kecamatan['Sembuh']; ?></h4>
                      <h6 align = "center"> Meninggal </h6>
                      <h4 align = "center"><?php echo $row_kecamatan['Meninggal']; ?></h4>
	              </div>
	            </div>
	          </div>
            </div>
            <?php
            }
            ?>

            <!-- Kedung Kandang -->
        </div>
        </div>
        </div>
    </section>




    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

    <?php include 'footer.php'; ?>