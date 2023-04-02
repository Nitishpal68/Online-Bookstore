<?php
 require_once 'header.php';
 require_once 'logincheck.php';
 ?>

 <div class="container">
   <div class="row">
     <div class="col-lg-2">
     </div>
     <div class="col-lg-10">
       <div class="alert alert-success" style="background-color:#34ce57; color:white; text-align:center;">
           <h5>Welcome to Admin Panel</h5>

       </div>
       <div class="card-deck">
     <div class="card" style="width: 18rem;">
   <img class="card-img-top" src="images/addlogo.png" alt="Card image cap" height="200" style="width:80%">
   <div class="card-body">
     <h3 class="card-title text-primary">Add Products</h3>

     <a href="add_books.php" class="btn btn-success" style="width:100%;">Add Products</a>
   </div>
 </div>

 <div class="card" style="width: 18rem;">
 <img class="card-img-top" src="images/viewproduct.jpg" alt="Card image cap" height="200" style="width:80%">
 <div class="card-body">
 <h3 class="card-title text-primary">View Products</h3>

 <a href="view_books.php" class="btn btn-success" style="width:100%;">View Products</a>
 </div>
 </div>
 <div class="card" style="width: 18rem;">
 <img class="card-img-top" src="images/removeproduct.jpg" alt="Card image cap" height="200" style="width:80%">
 <div class="card-body">
 <h3 class="card-title text-primary">Remove Product</h3>

 <a href="delete_books.php" class="btn btn-success" style="width:100%;">Remove Product</a>
 </div>
 </div>
 </div>
     </div>
   </div>
 </div>
<?php require_once 'footer.php'; ?>
