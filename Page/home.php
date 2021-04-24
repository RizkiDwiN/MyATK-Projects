<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="Images/Carousel/fix.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="Images/Carousel/fix.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="Images/Carousel/fix.png" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<!-- End Carousel -->

<div class="container" style="margin-top: 10px;">
	<!-- Ini Konten -->
	<h4><b>Temukan produk kantormu disini</b></h4><br>
	<table>
	<tr>
	<?php 
		$kolom = 3;
		$i = 1;
		$data = mysqli_query($koneksi,"select * from tb_atk");
		while($d = mysqli_fetch_array($data)){
    		if(($i) % $kolom== 1) {    
    		echo'<tr>';   
    		}  
    		echo '<td align="center" width="400px"><img src="Images/shop/'.$d['foto_atk'].'" width="50%" /><br><b>'.$d['nama_atk'].'</b><br><span style="color:green">Rp.'.$d['harga_atk'].'</span><br><button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"> Lihat</button><br><br><br></td>';
    		if(($i) % $kolom== 0) {    
    		echo'</tr>';    
    		}
   		$i++;
   		}
    ?>
</table>
<?php
$id = $_GET['id'];
$sql = mysqli_query($koneksi,"select * from tb_atk");
		while($det = mysqli_fetch_array($sql)){
?>
<!-- The Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><?php echo $det['nama_atk']; ?></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p ><img src="Images/shop/<?php echo $det['foto_atk']; ?>" style="float:left; width: 200px; height: 200px; margin-right: 20px;">
        	<b>Nama Produk</b> : <?php echo $det['nama_atk']; ?><br><br>
        	<b>Harga</b> : <?php echo $det['harga_atk']; ?><br><br>
        	<b>Stok</b> : <?php echo $det['stok_atk']; ?><br><br>
        	<b>Deskripsi</b> : <br><span style="color:grey;"><?php echo $det['deskripsi_atk']; ?></span></p>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
<?php } ?>
</div>