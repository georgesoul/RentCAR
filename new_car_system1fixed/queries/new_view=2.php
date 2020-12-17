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
			<th>Rent ID</th>
			<th>Country</th>
			<th>Customer SSN</th>
			<th>Payment Method</th>
			<th>Payment Amount</th>
		</tr>
		</thead>

		<?php
			require '../connectToDB.php';

			$query = "SELECT rents.RentID AS RentID,customers.Country AS Country,customers.SSN_cust AS SSN_cust,transaction_history.PaymentMethod AS PaymentMethod,transaction_history.PaymentAmount AS PaymentAmount FROM ((rents LEFT JOIN customers ON ((rents.SSN_cust = customers.SSN_cust))) LEFT JOIN transaction_history ON ((rents.RentID = transaction_history.RentID))) WHERE (NOT ((customers.Country LIKE 'Greece')))";
			
			if($query_run = mysqli_query($mysql_connection,$query))
			{
				while($row = mysqli_fetch_assoc($query_run))
				{
					$RentID = $row["RentID"];
					$Country = $row["Country"];
					$SSN_cust = $row["SSN_cust"];
					$PaymentMethod = $row["PaymentMethod"];
					$PaymentAmount = $row["PaymentAmount"];

					echo '<tr><td>'.$RentID.'</td><td>'.$Country.'</td><td>'.$SSN_cust.'</td><td>'.$PaymentMethod.'</td><td>'.$PaymentAmount.'</td></tr>';
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