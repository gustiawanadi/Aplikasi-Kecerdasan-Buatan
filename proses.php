<?php
include 'koneksi.php';
if(isset($_POST['submit'])){
//mencari id penyakit berdasarkan gejala yang di inputkan
	$qry='select id from tb_rule where ';
	array_pop($_POST);
	$rule_input=array();
	foreach ($_POST as $where) {
		$qry.=$where."=1 and ";
		array_push($rule_input,$where);
	}
	$qry.="1=1";
	$data=mysqli_query($kon,$qry);
	$id='';
	
//memindahkan rule dari database ke array
	$db_rule=mysqli_query($kon,"select * from tb_rule");
	while ($d=mysqli_fetch_array($db_rule)) {
		$arr_rule[]=$d;
	}
//mencari value dari  yg memiliki nilai 1 dan akan di simpan dalam array rule
	$rule=array();
	for ($i=0; $i <sizeof($arr_rule) ; $i++) { 
		$key=array_keys($arr_rule[$i]);
		$val=$arr_rule[$i];
		$sub_rule=array();
		for($j=3;$j<(sizeof($key));$j+=2){
			if($val[$key[$j]]==1)
				$sub_rule[]=$key[$j];
		}
		$rule[]=$sub_rule;
	}
	$status=false;
//mencocokan gejala yang di inputkan user dengan rule yang ada
	for ($i=0; $i <sizeof($rule); $i++) {
		$result=($rule_input==$rule[$i]);
		if ($result) {
			$status=true;
		}
	}
//jika di temukan akan menampilkan data dari penyakit
	if($status==true){
		while ($d=mysqli_fetch_array($data)) {
			$id=$d['id'];
		}
		$cari_penyakit="select * from tb_penyakit where id=$id";
		$db=mysqli_query($kon,$cari_penyakit);
		while ($d=mysqli_fetch_array($db)) {
			$penyakit=$d['penyakit'];
			$definisi=$d['definisi'];
			$penyebab=$d['penyebab'];
			$pengendalian_teknis=$d['pengendalian_teknis'];
			$pengendalian_kimia=$d['pengendalian_kimia'];
			include 'hasil.php';
		}
	}else{
		include 'error.php';
	}
}
?>
