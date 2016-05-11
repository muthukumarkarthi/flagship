<!DOCTYPE html>
<html>
<head>
<title>Classic - A Bootstrap Classified Ads Template</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Responisve, Bootstrap, Html5, Css3, Blog, Classified, Ads, Simple, Clean ">
<?php include("templates/css.php"); ?>
<?php include("templates/js.php"); ?>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script> 
     <![endif]-->
</head>
<body>
<?php include("templates/header.php");
if(isset($verificationError)){echo $verificationError; };
?>
<!-- Header Start -->
<div id="maincontainer">
  <div class="container"> 
    <!--  breadcrumb -->
    <ul class="breadcrumb">
      <li> <a href="index.html" >Home</a> </li>
      <li class="active"> Login</li>
    </ul>
    <a href="post-ad.html" class="postadinner"><span> <i class="fa fa-pencil"></i> Post An Ad</span></a>
    <div class="mt40 row">
      <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
        <h5 class="heading5">login</h5>
        <div class="loginbox">
          <form class="form-vertical"  action="" name="loGin" id="loGin" accept-charset="utf-8" method="post">
            <fieldset>
              <div class="control-group">
                <label  class="control-label">E-Mail Address:</label>
                                <div class="controls">
                  <input type="text" name="eMail" id="eMail"  autocomplete="off" class="span3">
                </div>
              </div>
              <div class="control-group">
                <label  class="control-label">Password:</label>
                
                <div class="controls">
                  <input type = "password" name="password" id="password" required="true" autocomplete="off"  class="span3">
                </div>
              </div>
              <a class="orange" >Forgotten Password</a> <br>
              <br>
              <button type="submit" class="btn btn-orange" id="loginForm" >Submit</button>
              
            </fieldset>
          </form>
        </div>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
        <div class="loginbox">
          <h5 class="heading5"> Register Account</h5>
          <p>By creating an account you will be able to shop faster, be up to date on an order's status, and keep track of the orders you have previously made.</p>
          <ul class="whyus">
            <li><i class="fa  fa-magic"></i> <span class="direname">Easy to Understand</span> </li>
            <li><i class="fa fa-arrow-right"></i> <span class="direname">Fast to Navigate</span> </li>
            <li><i class="fa fa-th"></i> <span class="direname">Lot of Options</span> </li>
            <li><i class="fa fa-search"></i><span class="direname">Quick Search</span> </li>
          </ul>
          <br>
          <br>
          <a  class="btn btn-orange">Continue</a> </div>
      </div>
    </div>
  </div>
<!-- Newsletter-->


<?php include("templates/footer.php"); ?>
<!-- Got to top --> 
<a id="gotop"><i class="fa fa-arrow-circle-up"></i></a>
</div>

<div id="styleswitch">
  <h3>Style Color switcher <i class="fa fa-cogs"></i> </h3>
  <a href="javascript: void(0)" title="switch styling" id="color1">color1</a> <a href="javascript: void(0)" title="switch styling" id="color2">color2</a> <a href="javascript: void(0)" title="switch styling" id="color3">color3</a> <a href="javascript: void(0)" title="switch styling" id="color4">color4</a> <a href="javascript: void(0)" title="switch styling" id="color5">color5</a> <a href="javascript: void(0)" title="switch styling" id="color6">color6</a> <a href="javascript: void(0)" title="switch styling" id="color7">color7</a> <a href="javascript: void(0)" title="switch styling" id="color8">color8</a> <a href="javascript: void(0)" title="switch styling" id="color9">color9</a> <a href="javascript: void(0)" title="switch styling" id="color10">color10</a> <a href="javascript: void(0)" title="switch styling" id="color11">color11</a> <a href="javascript: void(0)" title="switch styling" id="color12">color12</a> <a href="javascript: void(0)" title="switch styling" id="color13">color13</a> <a href="javascript: void(0)" title="switch styling" id="color14">color14</a> <a href="javascript: void(0)" title="switch styling" id="color15">color15</a> <a href="javascript: void(0)" title="switch styling" id="color16">color16</a> <a href="javascript: void(0)" title="switch styling" id="color17">color17</a> <a href="javascript: void(0)" title="switch styling" id="color18">color18</a> <a href="javascript: void(0)" title="switch styling" id="color19">color19</a> <a href="javascript: void(0)" title="switch styling" id="color20">color20</a> </div>
<!-- Placed at the end of the document so the pages load faster --> 
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="js/jquery.js"></script> 
<script src="js/jquery-migrate-1.2.1.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.min.js"></script> 
<!-- include jQuery + carouFredSel plugin --> 
<script src="js/jquery.carouFredSel-6.2.1-packed.js"></script> 
<!-- Flex slider Blog--> 
<script src="js/jquery.flexslider.js"></script> 
<!-- Jquery zoom on detail page--> 
<script  src="js/zoomsl-3.0.min.js"></script> 
<!-- Jquery Validation--> 
<script  type="text/javascript" src="js/jquery.validate.js"></script> 
<!-- Jquery Latest Tweet--> 
<script type="text/javascript" src="js/jquery.tweet.js"></script> 
<!-- Jquery Countdown--> 
<script type="text/javascript" src="js/jquery.countdown.js"></script> 
<!-- Social --> 
<script type="text/javascript" src="js/socialstream.jquery.js"></script> 
<!-- Jquery Map --> 
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script> 
<script type="text/javascript" src="js/jquery.gmap.js"></script> 
<!-- Sparkline --> 
<script type="text/javascript" src="js/jquery.sparkline.min.js"></script> 
<!-- Cloud --> 
<script type="text/javascript" src="js/jqcloud-1.0.4.js"></script>
<!-- Ratina View --> 
<script type="text/javascript" src="js/retina-1.1.0.min.js"></script> 
<!-- Custom --> 
<script src="js/custom.js"></script> 
<script type="text/javascript" src="js/jquery.style-switcher.js"></script> 
<script type="text/javascript">
$(document).ready(function() {
	$('#styleswitch').styleSwitcher();
	$("#styleswitch h3").click(function () {
		if($(this).parent().css("left") == "-200px"){
			$(this).parent().animate({left:'0px'}, {queue: false, duration: 500});
 		} else {
    	$(this).parent().animate({left:'-200px'}, {queue: false, duration: 500});
  		}
 	 });
});
</script>
</body>
<script>
  $(document).ready(function() {    
$("#loginForm").click(function(){
        var fields=["eMail","password"];
        for(i=0;i<fields.length;i++)
        {
        
        current_iteration = document.getElementById(fields[i]).value;
        
        document.getElementById(fields[i]).style.borderColor="";
            if(current_iteration=="")
            {     
            document.getElementById(fields[i]).focus();
            document.getElementById(fields[i]).style.borderColor="red";                 
                  return false;
            } 

        }       
              FormName= document.loGin;
          FormName.method= "POST";
              FormName.submit(); 
                       });
                });
               </script>

}
</html>
