<!DOCTYPE html>
<?php


	session_start();
	require "menu.php";
	require 'connectToDB.php';
	$id = $email = "";
	$error = "";

	if(isset($_GET['id']))
	{
		$id = $_GET["id"];
		$_SESSION["id"] = $id;
		
		$query = "SELECT * FROM `e-mail.store` WHERE StoreID='".$id."'";

		if (!($query_run = mysqli_query($mysql_connection, $query))) {
			$er = mysqli_error($mysql_connection);
			$error = "<div class='alert alert-danger alert-dismissable fade in'>
					<strong>$er<strong>.
					</div>";
		}
		else
		{
						$row = mysqli_fetch_assoc($query_run);
						$email = $row["E-mail"];	
		}
	}
	
	
	if(isset($_POST["submit"]))
	{
		//isset()
		$email = isset($_POST['email']) ? $_POST['email'] : "";
		//empty()
		$email = !empty($_POST['email']) ? $_POST['email'] : "";

		$id = $_SESSION["id"];
		if(is_numeric($id))
		{
							$query = "UPDATE `e-mail.store` SET `E-mail`='$email' WHERE StoreID='$id'";

							if (!mysqli_query($mysql_connection, $query)) {
								$er = mysqli_error($mysql_connection);
								$error = "<div class='alert alert-danger alert-dismissable fade in'>
				    					<strong>$er<strong>.
										</div>";
							}
							else
							{								
								mysqli_close($mysql_connection);
								header("Location:storesemails.php");	
				
								}
		}else
				{
					$error = "<div class='alert alert-danger alert-dismissable fade in'>
						    	<strong>Ο κωδικός καταστήματος πρέπει να είναι αριθμός<strong>.
							</div>";
				}
	}
?>
<html>
<body>

<div class="container">
<form method="post" action = "storesemailUpdate.php">	
<?php echo $error;?>
<div class="form-group row">
        <label class="col-md-2 control-label">Store ID</label>
        <div class="col-md-5">
            <input type="text" class="form-control" name="id" placeholder="Store ID" value="<?php echo $id;?>" disabled />
</div>
 </div>
 <div class="form-group row">
        <label class="col-md-2 control-label">Email Address</label>
        <div class="col-md-5">
            <input type="email" class="form-control" name="email" placeholder="Email Address" value="<?php echo $email;?>" required />
</div>
</div>
	<br></br>

    <div class="form-group row">
        <div class="col-md-offset-2 col-md-7">
            <button type="submit" class="btn btn-success" name="submit">Submit</button>
        </div>
    </div>
</form>

</body>
</html>