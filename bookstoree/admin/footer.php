<!-- Footer -->

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

		 function noti_fetch(){

                  $.ajax({


                  url: "noti_fetch.php",
                  method: "post",
                  data:{},
                  dataType: "text",
                  success:function(data){

                    $('#notif').html(data);
                     $('#nf').html(data);


                  }

                  });
                }

                setInterval(function(){

                    noti_fetch();
                },9000);

	});
</script>
</body>
</html>
