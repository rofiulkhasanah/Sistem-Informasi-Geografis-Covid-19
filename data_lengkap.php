<?php include 'header.php';
include 'config.php';

$query = 'SELECT * FROM data_covid ORDER BY tanggal DESC';
$sql = mysqli_query($con, $query);

$query_kecamatan = 'SELECT * FROM `data_covid_kecamatan` ORDER BY tanggal DESC';
$sql_kecamatan = mysqli_query($con, $query_kecamatan);

?>

<section class="hero-wrap" style="height: 200px; background-image: url('images/bgg.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end">
                <div class="col-md-9 ftco-animate pb-5">
                    <p style="margin-top: 70px;" class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html">Beranda <i class="ion-ios-arrow-forward"></i></a></span> <span>Data <i class="ion-ios-arrow-forward"></i></span></p>
                    <h3 style="color: white" class="mb-0 bread">Data Harian</h3>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section">
        <div class="container">
        <h3 align="center">Jumlah Kasus COVID-19 di Kota Malang</h3>
        <br>
            <div class="row justify-content-md-center">
                <br>
                <table class="table">
                    <thead>
                        <tr>
                        <th scope="col">Tanggal</th>
                        <th scope="col">Terkonfirmasi</th>
                        <th scope="col">PDP</th>
                        <th scope="col">ODP</th>
                        <th scope="col">Sembuh</th>
                        <th scope="col">Meninggal</th>
                        </tr>
                    </thead>
                <?php 
                // $no=1;
                while ($row = mysqli_fetch_assoc($sql)) {
    ?>         
                    <tbody>
                        <tr>
                        <th scope="row"><?php echo $row['tanggal'] ?></th>
                        <td><?php echo $row['Terkonfirmasi']  ?></td>
                        <td><?php echo $row['PDP']  ?></td>
                        <td><?php echo $row['ODP']  ?></td>
                        <td><?php echo $row['Sembuh']  ?></td>
                        <td><?php echo $row['Meninggal']  ?></td>
                        </tr>
                    </tbody>
                    <?php
}
// $no++;
?>
                </table>     
            </div>
            <hr>
        </div>
    </div>
    </section>


    <!-- MULAI PERKECAMATAN -->

    
    <section >
        <div class="container">
        <h3 align="center">Jumlah Kasus COVID-19 di Kota Malang Skala Kecamatan</h3>
        <br>
            <div class="row justify-content-md-center">
                <br>
                <table class="table">
                    <thead>
                        <tr>
                        <th scope="col">Kecamatan</th>
                        <th scope="col">Tanggal</th>
                        <th scope="col">Terkonfirmasi</th>
                        <th scope="col">PDP</th>
                        <th scope="col">ODP</th>
                        <th scope="col">Sembuh</th>
                        <th scope="col">Meninggal</th>
                        </tr>
                    </thead>
                <?php 
                // $no=1;
                while ($baris = mysqli_fetch_assoc($sql_kecamatan)) {
    ?>         
                    <tbody>
                        <tr>
                        <th scope="row"><?php echo $baris['tanggal'] ?></th>
                        <th ><?php echo $baris['deskripsi'] ?></th>
                        <td><?php echo $baris['Terkonfirmasi']  ?></td>
                        <td><?php echo $baris['PDP']  ?></td>
                        <td><?php echo $baris['ODP']  ?></td>
                        <td><?php echo $baris['Sembuh']  ?></td>
                        <td><?php echo $baris['Meninggal']  ?></td>
                        </tr>
                    </tbody>
                    <?php
}
// $no++;
?>
                </table>     
            </div>
            <hr>
        </div>
    </div>
    </section>

    <!-- SELESAI PERKECAMATAN -->


    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

    <?php include 'footer.php'; ?>