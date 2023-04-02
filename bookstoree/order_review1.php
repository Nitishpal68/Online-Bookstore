<?php
include_once 'header.php';
include_once 'logincheck.php';
include_once '../config.php';
$user_id = $_SESSION['id'];


$user_id = $_SESSION['id'];
	 if (!isset($_SESSION['checkout_id'])) {
	 	$_SESSION['checkout_msg'] = "Please Fill this form first";
	 	echo "<script> window.location.href= 'checkout.php'; </script>";
	 	exit();
	 }

	 if (isset($_POST['pay'])){
	 		
	 		
	 	
	    

	 	$sql = "SELECT * FROM cart WHERE user_id = $user_id";

	 	$result = mysqli_query($link,$sql);

	 	if(!$result){

	 		echo "error";
	 	}else{

	 		$query = "SELECT * FROM address WHERE checkout_id = '$checkout_id'";
	 		$res = mysqli_query($link,$query);
	 		while ($row = mysqli_fetch_array($res)) {
	 			
	 			$address_id = $row['id'];
	 		}

	 		$_SESSION['address_id'] = $address_id;

	 		$i= 0;

	 		while ($row = mysqli_fetch_array($result)) {
	 			
	 			$qr = "INSERT INTO orders(sno,order_id,book_id,book_name,img,price,quantity,total_price,user_id,date_of_purchase,status,payment_method,paid) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
	 			
	 			$q = "INSERT INTO order_address VALUES(?,?,?)";
	 			$qr1= "DELETE FROM cart WHERE user_id = ?";

	 			$stmt = mysqli_prepare($link,$qr);
	 			$stmt1 = mysqli_prepare($link,$qr1);
	 			$stmtup = mysqli_prepare($link,$q);
	 				
	 			mysqli_stmt_bind_param($stmt,'isssssissssss',$param_sno,$param_order_id,$param_bookid,$param_bookname,$param_img,$param_price,$param_quantity,$param_total_price,$param_user_id,$param_dop,$param_status,$param_payment_method,$param_paid);
	 			mysqli_stmt_bind_param($stmtup,'iis',$param_id,$param_address_id,$param_order_id);
	 			mysqli_stmt_bind_param($stmt1,'i',$param_user_id);

	 				$param_sno = '';
	 				$param_order_id = rand().$user_id;
	 				$_SESSION['order_id'][$i] = $param_order_id;
	 				$param_bookid = $row['book_id'];
	 				$param_bookname = $row['book_name'];
	 				$param_img = $row['img'];
	 				$param_price = $row['total_price'];
	 				$param_quantity = $row['quantity'];
	 				$param_total_price = $row['total_price'];
	 				$param_user_id = $row['user_id'];
	 				$param_dop = date("Y-m-d h:i:s");
	 				$param_status = "order_placed";
	 				$param_user_id = $user_id;
	 				$param_payment_method = 'cod';
	 				$param_paid = 'no';
	 				$param_id = '';
	 				$param_address_id = $address_id;

	 				if (mysqli_stmt_execute($stmt) && mysqli_stmt_execute($stmt1) && mysqli_stmt_execute($stmtup)) {

	    		
	 					unset($_SESSION['checkout_id']);
	 					
	 					echo '<script> 
	 							window.location.href = "order_success.php";
	 					 </script>';
	 				}


	 				$i++;
	 			
	 		}
	 	}
	

	 }

?>

<div class="container">
	<div class="row">
		<div class="col-sm-5 mr-5" style="height: 300px;box-shadow: 5px 5px 10px;">
			<h5 class="text-success">Delivery Address</h5>
			<hr>
			<?php 
			$chkid = $_SESSION['chkid'];
				$sql = "SELECT * FROM address WHERE user_id = $user_id AND checkout_id = '$chkid' ";
				$result = mysqli_query($link,$sql);
				while ($row = mysqli_fetch_array($result)) {
					
					$address = $row['address'];
					$name = $row['name'];
					$mob = $row['mobile'];
				}
			  ?>
			  <h5><?php echo $name; ?></h5>
			  <h5 ><?php echo $address;?></h5>
			  <h5> Mob- <?php echo $mob;?></h5>

		</div>
		<div class="col-sm-6" style="height: 300px;overflow-y: scroll;box-shadow: 5px 5px 10px;">
			<?php
			$sql = "SELECT * FROM cart WHERE user_id = $user_id";
			$result = mysqli_query($link,$sql);

			if (mysqli_num_rows($result)<1) {
				
				echo "<h3 class='text-success'>Your Cart is empty </h3>";
				echo "<img src='images/empty.png'>";
			}else
			{
				?>

				<h5 class="text-success">Itmes in your bag</h5>
			<table class="table">
				<tr>
					<td>PRODUCT</td>
					<td>PRICE</td>
					<td>QUANTITY</td>
					<td>TOTAL</td>
				</tr>

				<?php

				

				while($row = mysqli_fetch_array($result)){

					?>

						<tr>
							<td><?php echo '<img src="'.$row['img'].'" height="50" width="50">';
								echo "<br>".$row['book_name']; ?>
								<br>
									
							</td>
							<td><?php echo "&#8377; ".$row['price']; ?></td>
							<td>
							<?php  echo $row['quantity'];?>
							</td>
							<td><?php echo "&#8377; ".(float)$row['price']*(float)$row['quantity']; ?></td>
						</tr>

			<?php	}


				?>
			</table>

			<div class="total">
				<?php
				$total_price = 0;
					$sql = "SELECT * FROM cart WHERE user_id = $user_id";
					$result = mysqli_query($link,$sql);
					while ($row = mysqli_fetch_array($result)) {
						
						$total_price = $total_price + $row['total_price'];
					}
				?>

				<span class="text-primary float-right">
					<h5> <?php  echo "Total Price: &#8377; ".$total_price;?></h5>
				</span>
				
			</div>

				<?php
			}

			?>
		</div>
	</div>
	<div class="row mt-5">
		<div class="col-sm-6" style="height: 200px;box-shadow: 5px 5px 10px;" >
			<h5 class="text-success" >Choose Payment Method</h5>
			<hr>
			<h5>Payment Method : Cash On Delivery</h5>
			<form method="post">
				<button class="btn btn-success" id="pay" type="submit">Place Order</button>
			</form>
			

		</div>
	
	</div>
</div>

<?php include_once 'footer.php'; ?>