<?php include 'header.php';  ?>
<br>
<script>
function myFunction() {
    window.print();
}
</script>
<h1>Hasil Diagnosa</h1><br>
<div class="container">
  <button style="float:right;" class="btn btn-success" onclick="myFunction()">CETAK</button>
</div>
<div class="container col-6">
	
    <div class="input-group mb-3">
    	<div class="input-group-prepend">
        	<span class="input-group-text"><h5>PENYAKIT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h5></span>
    	</div>
	    <textarea class="form-control" style="color:red;" rows="1"  readonly>Belum Diketahui</textarea>
 	</div>

	<div class="input-group mb-3">
  		<div class="input-group-prepend">
			<span class="input-group-text"><h5>DEFINISI&nbsp;&nbsp;&nbsp;</h5></span>
  		</div>
		<textarea class="form-control" style="color:red;" rows="6" readonly>
    		Maaf tidak terdefinisi!
  		</textarea>
	</div>

	<div class="input-group mb-3">
  		<div class="input-group-prepend">
      		<span class="input-group-text"><h5>PENYEBAB</h5></span>
  		</div>
  		<textarea class="form-control" style="color:red;" rows="6"  readonly>
    		Maaf data belum tersedia!
  		</textarea>
	</div>
    
	<div class="input-group mb-3">
  		<div class="input-group-prepend">
      		<span class="input-group-text"><h5>PENGENDALIAN TEKNIS</h5></span>
  		</div>
  		<textarea class="form-control" style="color:red;" rows="6"  readonly>
    		Maaf data belum tersedia!
  		</textarea>
	</div>
    
	<div class="input-group mb-3">
  		<div class="input-group-prepend">
      		<span class="input-group-text"><h5>PENGENDALIAN KIMIA</h5></span>
  		</div>
  		<textarea class="form-control" style="color:red;" rows="6"  readonly>
    		Maaf data belum tersedia!
  		</textarea>
	</div>
    
</div>
<br>
<?php include 'footer.php'; ?>
