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
			<th>Car Type</th>
			<th>Average of Kilometers</th>
		</tr>
		</thead>

		<?php
			require '../connectToDB.php';

			$query = " SELECT new_car_system1fixed.vehicle.Type AS Type, AVG(new_car_system1fixed.vehicle.Kilometers) AS avr_kilometers FROM new_car_system1fixed.vehicle GROUP BY new_car_system1fixed.vehicle.Type";
			if($query_run = mysqli_query($mysql_connection,$query))
			{
				while($row = mysqli_fetch_assoc($query_run))
				{
					$type = $row["Type"];
					$km = $row["avr_kilometers"];
					
					echo '<tr><td>'.$type.'</td><td>'.$km.'</td></tr>';
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