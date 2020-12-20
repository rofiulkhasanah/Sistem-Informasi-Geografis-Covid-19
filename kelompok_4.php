<?php
include 'config.php';
include 'header.php';

$query = "SELECT * FROM anggota_kelompok";
$sql = mysqli_query($con,$query);
?>

<section class="hero-wrap" style="height: 200px; background-image: url('images/bgg.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end">
                <div class="col-md-9 ftco-animate pb-5">
                    <p style="margin-top: 70px;" class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html">Beranda <i class="ion-ios-arrow-forward"></i></a></span> <span>Kelompok<i class="ion-ios-arrow-forward"></i></span></p>
                    <h3 style="color: white" class="mb-0 bread">Anggota Kelompok</h3>
                </div>
            </div>
        </div>
    </section>

<br>
<br>
<section>
  <div class="container">
    <div class="row">
      
      <?php
      while ($row = mysqli_fetch_assoc($sql)) {
        # code...
      
      ?>
    <!-- Mulai -->
    <div class="col">
    <div class="card" style="width: 15rem; margin-right: 10px">
        <img src="<?php echo $row['src_gambar'] ?>" class="card-img-top" width="460" height="345">
        <div class="card-body">
          <hr>
          <h5>NAMA</h5>
          <h6 style="color: black"><b><?php echo $row['nama'] ?></b></h6>
          <hr>
          <h5>NIM</h5>
          <h6 style="color: black"><b><?php echo $row['nim'] ?></b></h6>
        </div>
      </div>
      </div>
      <?php
      }
      ?>
    </div>
  </div>
</section>
<br>
<br>
<?php
include 'footer.php';
?>