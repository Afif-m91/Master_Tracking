
<div class="content-wrapper">
	<section class="content-header">
	  <h1>
		<?php echo $title?>
	  </h1>
	  

<style>
.info-box-content {
    padding: 5px 10px;
    margin-left: 90px;
	  }

.info-box {
    display: block;
    min-height: 90px;
    background: #fff;
    width: 100%;
    box-shadow: 0 1px 1px rgba(0,0,0,0.1);
    border-radius: 2px;
    margin-bottom: 15px;
}

.info-box-text {
    text-transform: uppercase;
}
</style>
	  <hr> </hr>
	  <hr> </hr>

	   <?php 
$conn=mysqli_connect("localhost","root","","pengiriman");
?>

<div class="row">

 <div class="col-lg-3 col-xs-3">
	<div class="info-box">
		<span class="info-box-icon bg-green">
			<?php
			$result=mysqli_query($conn,"SELECT*,COUNT(*) as 'count' FROM pengiriman WHERE status='2' GROUP BY 'status' ");
			while($comp=mysqli_fetch_array($result)) 
			{
			echo $comp['count'];	 
			}
			?>
		</span>
		<?php
		$conn=mysqli_connect("localhost","root","","pengiriman");
		?>
	<div class= "info-box-content">
				<span class ="info-text">
				Data Yang Sudah Diterima				
				</span>
					
			</div>
		</div>
	</div>
	<div class="col-lg-3 col-xs-3">
	<div class="info-box">
		<span class="info-box-icon bg-blue">
			<?php
			$result=mysqli_query($conn,"SELECT*,COUNT(*) as 'count' FROM pengiriman WHERE status='1' GROUP BY 'status' ");
			while($comp=mysqli_fetch_array($result)) 
			{
			echo $comp['count'];	 
			}
			?>
		</span>
		<?php
		$conn=mysqli_connect("localhost","root","","pengiriman");
		?>
	<div class= "info-box-content">
				<span class ="info-text">
				Data Yang Sedang Dikirim				
				</span>
					
			</div>
		</div>
	</div>
	<div class="col-lg-3 col-xs-3">
	<div class="info-box">
		<span class="info-box-icon bg-red">
			<?php
			$result=mysqli_query($conn,"SELECT*,COUNT(*) as 'count' FROM pengiriman WHERE status='3' GROUP BY 'status' ");
			while($comp=mysqli_fetch_array($result)) 
			{
			echo $comp['count'];	 
			}
			?>
		</span>
		<?php
		$conn=mysqli_connect("localhost","root","","pengiriman");
		?>
	<div class= "info-box-content">
				<span class ="info-text">
				Data Yang Ditolak				
				</span>
					
			</div>
		</div>
	</div>		
	<div class="col-lg-3 col-xs-3">
	<div class="info-box">
		<span class="info-box-icon bg-yellow">
			<?php
			$result=mysqli_query($conn, "SELECT count(*) as total from pengiriman");
			$data=mysqli_fetch_assoc($result);
			echo $data['total'];
			?>
		</span>
		<?php
		$conn=mysqli_connect("localhost","root","","pengiriman");
		?>
	<div class= "info-box-content">
				<span class ="info-text">
				Total Data Yang Masuk				
				</span>
					
			</div>
		</div>
	
</div>

	</div>
		<!-- <div style="width: 800px;margin: 0px auto;"> -->
	<div class= "info-box-content">
		<canvas id="myChart"></canvas>
	</div>		

	<script>
	var ctx = document.getElementById("myChart").getContext('2d');
	var myChart = new Chart(ctx, {
		type: 'bar',
		data: {
			labels: ["1", "2", "3", "Pertanian"],
			datasets: [{
				label: '',
				data: [
				<?php 
				$jumlah_teknik = mysqli_query($conn,"select * from pengiriman where status='1'");
				echo mysqli_num_rows($jumlah_teknik);
				?>, 
				<?php 
				$jumlah_ekonomi = mysqli_query($conn,"select * from pengiriman where status='2'");
				echo mysqli_num_rows($jumlah_ekonomi);
				?>, 
				<?php 
				$jumlah_fisip = mysqli_query($conn,"select * from pengiriman where status=''");
				echo mysqli_num_rows($jumlah_fisip);
				?>, 
				<?php 
				$jumlah_pertanian = mysqli_query($conn,"select * from mahasiswa where fakultas='pertanian'");
				echo mysqli_num_rows($jumlah_pertanian);
				?>
				],
				backgroundColor: [
				'rgba(255, 99, 132, 0.2)',
				'rgba(54, 162, 235, 0.2)',
				'rgba(255, 206, 86, 0.2)',
				'rgba(75, 192, 192, 0.2)'
				],
				borderColor: [
				'rgba(255,99,132,1)',
				'rgba(54, 162, 235, 1)',
				'rgba(255, 206, 86, 1)',
				'rgba(75, 192, 192, 1)'
				],
				borderWidth: 1
			}]
		},
		options: {
			scales: {
				yAxes: [{
					ticks: {
						beginAtZero:true
					}
				}]
			}
		}
	});
</script>

	</section>
	<section class="content">
	</section>
</div>
