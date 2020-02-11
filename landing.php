<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ZKIN</title>
<base href="http://www.z-kin.com/" />
<meta name="description" content="ZKIN" />
<meta name="keywords" content= "ZKIN" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<link <?php echo 'rel="shortcut icon"  type="images/logo.png"'; ?>  href="http://www.z-kin.com/image/catalog/ic_zkin.jpg" >
 
 
<link <?php echo 'rel="stylesheet"'; ?> href="http://z-kin.com/admin/view/stylesheet/bootstrap.css" media="screen"  />  
<link <?php echo 'rel="stylesheet"'; ?> href='https://fonts.googleapis.com/css?family=Open+Sans' type='text/css'>

<script src="https://code.jquery.com/jquery-3.0.0.js"></script>

<style>
body {
	background-image: url("http://www.z-kin.com/image/catalog/Landing_Page/background.jpg");
	background-repeat: no-repeat;
	background-position:center top;
	background-size: cover;
	padding: 0px;
	margin: 0px;
	height:100vh;
	font-family: 'Open Sans', sans-serif;
}
img {
	width: 100%;
} 
 
#logo{
	text-align:center;
	margin-top: 20px;	 
}
#logo img{
	width:250px;
}
 
.language a:hover,.language a:active{
	text-decoration:none;
}
 

.language_box{ 
	margin:auto;
	text-align:center;
	background-color: rgba(77, 76, 68, 0); 
	
}
.language_box p{
	font-size: 16px;
    letter-spacing: 2px;
    font-weight:lighter;
    color: #fff;   
}

a,a:hover,a:active{
	text-decoration:none;
	color:#fff;
}

@media screen and (max-device-width:991px) {
	.language_box p{
		padding:20px;
	}
}
 
 
@media screen and (max-device-width:767px) {
	.col-xs-12 {
	  width: 100%;
	}	
	
	.language{
		margin-top:10%;		
	}
	.language_box p{
		font-size:20px;
	}
}

@media screen and (max-device-width:320px) {
	 
	.language_box p{
		font-size:16px;
	}
	.language{
		margin-top:0%;		
	}
	
	#logo{
		margin-top:0px;
	}
	
		
	.japanese{
		margin-top:30px;
	}
}
 

</style>
 
<script type="text/javascript">

(function($){
 $.fn.extend({
   center: function () {
     return this.each(function() {
      var top = ($(window).height() - $(this).outerHeight()) / 2 - $("#logo").outerHeight();
         //top += document.body.scrollTop /4 ;
		 //top  = top / 2; 
		if($(window).width() > 767){ 
      		$(this).css({'margin-top' : (top > 0 ? top : 0)+'px'});
		}
           
		    });
        }
    }); 
})(jQuery);

$(document).ready(function(e) { 
	$('.language').center();  
	
	
	$('#language a').on('click', function(e) {
		e.preventDefault();

		$('#language input[name=\'code\']').attr('value', $(this).attr('href'));
	 	
		$('#language').submit();
	}); 
	 
});

$(window).resize(function(e) { 
     $('.language').center();  
	 
});
 
 

</script> 

</head>

<body>
<div class="container">
  <div id="logo"><img src="http://www.z-kin.com/image/catalog/Landing_Page/logo.png"  /></div>
  <div class="row language">
   <div class="col-xs-12 col-sm-2">
   &nbsp;
   </div>
   
    <div class="col-xs-12 col-sm-8">
    
    	<div class="col-xs-12 col-sm-6 col-md-3">
            <a href="http://www.zkin.jp/" > 
                 <div class="language_box"><p class="multi_txt">JAPANESE</p></div>
            </a> 
        </div> 
        <form action="http://www.z-kin.com/index.php?route=common/language/language" method="post" enctype="multipart/form-data" id="language">
			 
		
        <div class="col-xs-12 col-sm-6 col-md-3">
            <a href="en" class="language-select">
                 <div class="language_box"><p class="multi_txt">ENGLISH</p></div>
            </a> 
        </div> 
        
        <div class="col-xs-12 col-sm-6 col-md-3">
            <a href="cn" class="language-select">
                 <div class="language_box"><p class="multi_txt">简体中文</p></div>
            </a> 
        </div> 
        
        <div class="col-xs-12 col-sm-6 col-md-3">
            <a href="zh-TW" class="language-select">
                 <div class="language_box"><p class="multi_txt">繁體中文</p></div>
            </a> 
        </div> 
        
        	<input type="hidden" name="code" value="">
			<input type="hidden" name="redirect" value="http://www.z-kin.com/index.php?route=common/home">
		</form>
        
    </div>
    
    
     <div class="col-xs-12 col-sm-2">
     &nbsp;
   	 </div>
   
    
    </div>
  </div>
</div>
</body>
</html>