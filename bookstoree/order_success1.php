<?php

	include_once 'header.php';
	include_once 'logincheck.php';
	include_once '../config.php';

	if(!isset($_SESSION['order_id'])){

		echo "<script>
			window.location.href= 'index.php';
		</script>";

		exit();
	}

	    $output = '';
		$out = '';
		$total_price = 0;
		$dop ='';
		$payment_method='';

	
	
				

	foreach ($_SESSION['order_id'] as $key => $value) {
				
	$sql = "SELECT * FROM orders WHERE user_id = $_SESSION[id] AND order_id = '$value'";

	$res = mysqli_query($link,$sql);

	while ($row = mysqli_fetch_array($res)) {
			
			$output = '';
			$order_id = $row['order_id'];
			$output.= '<tr><td>'.$row['book_name'].'</td>';
			$output.= '<td>'.$row['quantity'].'</td>';
			$output.= '<td>'.$row['price'].'</td>';
			$output.= '<td>'.$row['total_price'].'</td></tr>';
			$total_price += $row['total_price'];
			$dop = $row['date_of_purchase'];
			$payment_method = $row['payment_method'];

			$out.= '<div class=" alert-secondary p-2 rounded-top"><strong> ORDER ID: '.$order_id.'</strong></div>
		   <table class="table table-dark">
								<tr>
									<td>Book Name</td>
									<td>Quantity</td>
									<td>Price</td>
									<td>Total</td>	
								</tr>
								 
								 '.$output.'

							</table>';

			
						
		}


	}   



	unset($_SESSION['order_id']);
	
	
	// var_dump($book_img);



	$q = "SELECT * FROM address WHERE user_id = $_SESSION[id] AND id = $_SESSION[address_id]";

	$res = mysqli_query($link,$q);

	while ($row = mysqli_fetch_array($res)) {
		
		$name = $row['name'];
		$address = $row['address'];
		$mobile = $row['mobile'];

	}

	
?>


<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="text-success">
						<div class="alert-header"><strong>Thank You <?php echo $name; ?> for shopping with us.</strong></div>
						Your Order has been successfully placed.
						Your order details are as follows:
					</div>
						<br>
						<div class="details  p-3" >

							<table class="table w-75">
								
								<tr>
									<td><b>DELIVERY ADDRESS:</b></td>
									<td><?php echo $name .', '.$address;  ?></td>
								</tr>
								<tr>
									<td><b>MOBILE: </b></td>
									<td><?php echo $mobile;  ?></td>
								</tr>
								<tr>
									<td><b>DATE : </b></td>
									<td><?php echo $dop;  ?></td>
								</tr>
								<tr>
									<td><b>PAYMENT METHOD: </b></td>
									<td><?php echo $payment_method;  ?></td>
								</tr>
								 
							</table>
							
							<?php echo $out;  ?>

							
							<b>TOTAL AMOUNT: <?php echo '&#8377; '.$total_price;  ?></b>	
								<br><br>
								<span class="badge badge-info">KEEP THIS ORDER ID SAVED FOR THE FUTURE REFERENCE OF YOUR ORDER.</span>
							
						</div>
						
							
				</div>
			</div>
</div>



<?php include_once 'footer.php'; ?>