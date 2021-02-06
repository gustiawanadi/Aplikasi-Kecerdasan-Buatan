<?php include 'koneksi.php';?>
<center>
<form class="col-6" method="POST" action="proses.php">
<div style="overflow: scroll; height: 467px;">
<?php
//cek db gejala
	$qry="select * from tb_gejala";
	$data=mysqli_query($kon,$qry);
	//agar berlaku berulangan sebanyak data yg ada di tb_gejala
	while ($d=mysqli_fetch_array($data)) {
	?>
	<div class="input-group mb-3">
  		<div class="input-group-prepend">
		    <div class="input-group-text">
    		    <input type="checkbox" aria-label="Checkbox for following text input" value="<?=$d['kode']?>" name="<?=$d['id']?>">
    		</div>
  		</div>
			<input type="text" class="form-control" aria-label="Text input with checkbox" value="<?=$d['gejala']?>">
	</div>
    <?php
	//stop perulangan!
	}
	?>
</div>
	<input type="submit" class="btn btn-primary btn-lg btn-block" name="submit" value="submit">
</form>
</center>
