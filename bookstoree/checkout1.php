<?php 
include_once 'header.php';
include_once '../config.php';

		if (isset($_POST['checkout'])) {

			$user_id = $_SESSION['id'];

			$address = $_POST['address'].' '.$_POST['city'].' '.$_POST['state'].' '.$_POST['pincode'];
			
			//$sql = "INSERT INTO address VALUES('',$user_id,'$_POST[fullname]','$address','$_POST[mobile]')";
			$sql = "INSERT INTO address(id,user_id,name,address,mobile,checkout_id) VALUES(?,?,?,?,?,?)";
			// $res = mysqli_query($link,$sql);
			// if($res){
			// 	echo "success";
			// }else{
			// 	echo "fail";
			// }

			if($stmt = mysqli_prepare($link,$sql)){

				mysqli_stmt_bind_param($stmt,'iissss',$param_id,$param_user_id,$param_name,$param_address,$param_mob,$param_chk_id);

				$param_id = '';
				$param_user_id = $user_id;
				$param_name = $_POST['fullname'];
				$param_address = $address;
				$param_mob = $_POST['mobile'];
				$param_chk_id = uniqid();
				$_SESSION['chkid'] = $param_chk_id;

				if(mysqli_stmt_execute($stmt)){

					echo '<script> window.location.href = "order_review.php"; </script>';
				}else{

					echo "<div class='alert alert-danger'>Error occured</div>";
				}

			}
		}
 ?>
<div class="container">
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<h4 class="text-success"><strong>Checkout Page</strong></h4>
			<form method="post">
				<div class="form-group">
					<label>Full Name</label>
					<input type="text" name="fullname" class="form-control" placeholder="Enter full name">
				</div>
				<div class="form-group">
					<label>Address</label>
					<input type="text" name="address" class="form-control" placeholder="Enter Address">
				</div>
				<div class="form-group">
					<label>City</label>
					<input type="text" name="city" class="form-control" placeholder="Enter City">
				</div>
				<div class="form-group">
					<label>State</label>
					<input type="text" name="state" class="form-control" placeholder="Enter State">
					<label>Pin Code</label>
					<input type="text" name="pincode" class="form-control" placeholder="Enter Pin Code">
				</div>
				<div class="form-group">
					<label>Mobile Number</label>
					<input type="text" name="mobile" class="form-control" placeholder="Enter Mobile Number">
				</div>
				<div class="form-group">
					<button class="btn btn-success" type="submit" name="checkout">Continue to Payment</button>
				</div>
			</form>
		</div>
		<div class="col-sm-4"></div>
	</div>
</div>

<?php include_once 'footer.php'; ?>