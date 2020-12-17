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
			<th>Store ID</th>
			<th>City</th>
			<th>Total Income</th>
		</tr>
		</thead>

		<?php
			require '../connectToDB.php';

			$query = "SELECT stores.StoreID AS StoreID,rents.StartLocation AS store_city,SUM(transaction_history.PaymentAmount) AS income FROM ((rents LEFT JOIN stores ON ((rents.StartLocation = stores.City))) LEFT JOIN transaction_history ON ((rents.RentID = transaction_history.RentID))) GROUP BY rents.StartLocation ORDER BY SUM(transaction_history.PaymentAmount) DESC";
			
			if($query_run = mysqli_query($mysql_connection,$query))
			{
				while($row = mysqli_fetch_assoc($query_run))
				{
					$StoreID = $row["StoreID"];
					$store_city = $row["store_city"];
					$income = $row["income"];
					
					echo '<tr><td>'.$StoreID.'</td><td>'.$store_city.'</td><td>'.$income.'</td></tr>';
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