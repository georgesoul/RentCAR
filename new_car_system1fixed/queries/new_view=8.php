<?php	
	
	require "menu.php";

?>

<html>
<body>
<div class="container">

<div class="table-responsive">		
	<table class="table table-striped">
		<thead>
		<tr>
			<th>Vehicle ID</th>
			<th>Starting Date</th>
			<th>Finish Date</th>
		</tr>
		</thead>

		<?php
			require '../connectToDB.php';
			
			$query = "SELECT new_car_system2fixed.reservation.VehicleID AS VehicleID, new_car_system2fixed.reservation.StartDate AS StartDate, new_car_system2fixed.reservation.FinishDate AS FinishDate FROM new_car_system2fixed.reservation WHERE (new_car_system2fixed.reservation.StartDate > NOW()) UNION SELECT new_car_system2fixed.rents.VehicleID AS VehicleID, new_car_system2fixed.rents.StartDate AS StartDate, new_car_system2fixed.rents.FinishDate AS FinishDate FROM new_car_system2fixed.rents WHERE (ISNULL(new_car_system2fixed.rents.FinishDate) OR (new_car_system2fixed.rents.FinishDate > NOW()))";
			
			if($query_run = mysqli_query($mysql_connection,$query))
			{
				while($row = mysqli_fetch_assoc($query_run))
				{
					$id = $row["VehicleID"];
					$sdate = $row["StartDate"];
					$fdate = $row["FinishDate"];

					echo '<tr><td>'.$id.'</td><td>'.$sdate.'</td><td>'.$fdate.'</td></tr>';
				}
			}
			else
			{
				echo 'Error';
			}

			mysqli_close($mysql_connection);
		?>
	</table>
</div>
</body>
</html>