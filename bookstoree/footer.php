
<!-- Footer -->
<!-- Login Modal -->
<div class="modal fade rounded-0 " id="LoginModal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content w-75 my-auto mx-auto rounded-0 animated fadeInDownBig justify-content-center" style="vertical-align: center;">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title text-info">Login to E-Commerce</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <span id="help" class="text-danger"></span>
         <form class=""  method="post">
              <div class="form-group">
                <i class="fa fa-envelope"></i><label for="">&nbsp;&nbsp;Email</label>
                <input type="text" name="username" id="username" value="" class="form-control" placeholder="Enter username">
                <!-- <span class="text-danger"><?php echo $username_err ?></span> -->
              </div>
              <div class="form-group">
                <i class="fa fa-key"></i><label for="">&nbsp;&nbsp;Password</label>
                <input type="password" name="password" id="password" value=""  class="form-control"  placeholder="Enter password" >
             <!--    <span class="text-danger"><?php echo $password_err ?></span> -->
              </div>
              
           
              <div class="form-group">
              <button type="button" id="login" name="submit"  class="btn btn-success" style="width:100%" value="Login">Login</button>
              </div>
            </form>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <h6>New to E-commerce ? <a href="signup.php">Join Now</a></h6>
      </div>

    </div>
  </div>
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; www.nitishpal.epizy.com 2021</p>
        <p class="m-0 text-center text-white">This site is developed and hosted by Nitish Pal & Group</p>
    </div>
    <!-- /.container -->
</footer>
<script type="text/javascript">
	$(document).ready(function(){

  

		$('.login').click(function(event){

			    event.stopPropagation();
                event.stopImmediatePropagation();
                $('#LoginModal').modal('show');


                return false;
		});



		$('#login').click(function(){

			var username = $('#username').val();
			var password = $('#password').val();

			if(username =="" || password=="")
			{
				$('#help').html("both fields are required");
			}else{

				$.ajax({

				url: "loginprocess.php",
				method: "POST",
				data:{username:username,password:password},
				dataType:"text",

				success: function(msg){

					if(msg==1)
					{
						window.location.href = window.location.href;

					}else{

						$('#help').html("invalid username or password");
					}	
				}


			});

			}

			

		});

		cart_count();
            function cart_count(){
                //ajax call to update cart
                $.ajax({
                    url:'count_cart.php',
                    method:"POST",
                    dataType: "text",
                    success:function(data)
                    {
                        $('#countcart').html(data);
                    }
                }); }


		 $('button[name=add_to_cart]').click(function(){

		 		var id = $(this).attr("id");
		 		var book_id = $('#book_id'+id+'').val();
		 		var book_name = $('#book_name'+id+'').val();
                var price = $('#price'+id+'').val();
                var image = $('#img'+id+'').val();
                var quantity = 1;
                var action = "add_to_cart";

                $.ajax({

                	url: "cart_process.php",
                	method: "post",
                	dataType: "text",
                	data:{book_id:book_id,book_name:book_name,price:price,image:image,quantity:quantity,action:action},

                	success:function(msg){

                		cart_count();
                		$('#status').html(msg);
                		window.setTimeout(function() {
                            $(".alert").fadeTo(500, 0).slideUp(500, function(){
                                $(this).remove();
                            });
                        },2000);

                	}
                });


		 });

         $('#checkout').click(function(){

            $('#checkoutform').addClass('was-validated')
         });
		

		$('#pay').click(function(){

            $('#myModal').slideToggle(500).modal('show');
        });
		  

		 window.setTimeout(function() {
                            $(".alert").fadeTo(500, 0).slideUp(500, function(){
                                $(this).remove();
                            });
                        },2000);



                $('#cancelorder').click(function(){

                    $('#myModal').modal("hide");

                });

                    order_check();
                function order_check(){
                    var total_orders = $('#total_orders').val();
                    if (total_orders == 0) {
                      $('#load_more').hide().fadeTo(500);
                      $('#order_info').html("No orders to show");

                   }
                }

                var last_id = 5;
                check();
                function check(){

                     var total_orders = $('#total_orders').val();
                     if(total_orders<=5 && total_orders >0) {

                                   $('#load_more').remove();
                                    $('#order_info').css("display","block");
                                    window.setTimeout(function(){
                                         $('#order_info').html("That's all of your orders.");
                                    },200);

                            }
                }

                window.setTimeout(function(){

                    $('.error').fadeOut(500);
                    $('.status').fadeOut(500);
                },1000);

            

                $('#load_more').click(function(){

                    var total_orders = $('#total_orders').val();

                    $.ajax({

                        url: "getmoredata.php",
                        method : "post",
                        data: {last_id:last_id},
                        dataType: "text",
                        success: function(data){

                            $('#load_more').hide();
                            $('#loading').html("Loading..<img src='images/tenor.gif' height='30' width='30'>");
                            window.setTimeout(function(){

                                $(data).appendTo('#data').hide().fadeIn(500);
                                $('#loading').html('');
                                $('#load_more').show();

                            },500);

                            last_id += 5;

                            if (last_id > total_orders) {

                                 $('#load_more').css("visibility","hidden");
                                 $('#order_info').css("display","block");
                                    window.setTimeout(function(){
                                    $('#order_info').html("That's all of your orders.");
                                    },1200);
                            }
                            

                        }
                    });

                });


                $(function () {
                  $(document).scroll(function () {
                    var $nav = $(".navbar-expand-lg");
                    $nav.toggleClass('scrolled', $(this).scrollTop() > $nav.height());
                  });
                });

              
              $('button[name=confirm_otp]').click(function(){

                var otp = $('#otp_val').val();
                var action="otp_match";

                $.ajax({

                  url: "reset_pas_process.php",
                  method: "post",
                  data:{otp:otp,action:action},
                  dataType: "text",
                  success:function(data){

                      if (data == 1) {

                        $('#reset_pas_div').remove();
                        $('#confirm_div').hide().fadeIn(500);
                      }else{
                        
                          $('#status').css("display","block");
                          $('#status').html("<span class='text-danger alert alert-danger'>OTP did not match</span>");
                          
                          window.setTimeout(function(){
                              
                              $('#status').css("display","none");
                              
                          },1000);
                        
                    

                  }
                  }

                });

              });


              //saving reset password
                $('button[name=reset_pass]').click(function(){

                var new_password = $('#new_password').val();
                var action="reset_pass";

                $.ajax({

                  url: "reset_pas_process.php",
                  method: "post",
                  data:{new_password:new_password,action:action},
                  dataType: "text",
                  success:function(data){

                    $('#reset_pass_msg').html(data);

                    window.setTimeout(function(){
                              
                            window.location.href= "login.php";
                              
                          },2000);
                  }

                });

              });

        
        $('#submit_msg').click(function(){

          var email = $('#Email').val();
          var name = $('#name').val();
           var msg= $('#message').val();


           $.ajax({

              url: "contact_process.php",
              method: 'post',
              data: {email:email,name:name,msg:msg},
              dataType: 'text',
              success: function(data){

                  $('#status').html(data);
                 $('#contact_form')[0].reset()
              }

           });



        });       
               

	});




</script>
</body>
</html>
