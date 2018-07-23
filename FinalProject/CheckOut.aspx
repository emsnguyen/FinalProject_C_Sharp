<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="FinalProject.CheckOut" %>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="css/login.css" rel='stylesheet' type='text/css' />
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
	<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/checkOut.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
 <form id="form1" runat="server">
<div class="container">
		<div class="one-fifth column row_1">
			
		 </div>
		 <div class="cssmenu">
			<ul>
			   <li class="active"><a href="Login.aspx">My Account</a></li> 
			</ul>
		 </div>
	</div>
 <div class="header_bottom men_border">
		<div class="container">
			<div class="col-xs-8 header-bottom-left">
				<div class="col-xs-2 logo">
					<h1><a href="#"><span>Buy</span>shop</a></h1>
				</div>
				<div class="col-xs-6 menu">
					<ul class="megamenu skyblue">
					  <li><a class="color1" href="Home.aspx">Guitar</a><div class="megapanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
								</div>												
							</div>
						  </div>
						</div>
					</li>
					<li class="grid"><a class="color2" href="Other.aspx">Other</a>
					  <div class="megapanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
								</div>												
							</div>
						  </div>
						</div>
				</li>
				<li><a class="color6" href="#">Support</a></li>
			  </ul> 
			</div>
		</div>
            <div class="col-xs-4 ">
	       <div class="box_1-cart">
		     <div class="box_11"><a href="Cart.aspx">
		      <h4><p>Cart: <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</p><img src="images/bag.png" alt=""/><div class="clearfix"> </div></h4>
		      </a></div>
	          <p class="empty"><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
	          <div class="clearfix"> </div>
	        </div>
	        <div class="search">	  
				<input type="text" name="s" class="textbox" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
				<input type="submit" value="Subscribe" id="submit" name="submit">
				<div id="response"> </div>
		     </div>
	       <div class="clearfix"></div>
         </div>
        <div class="clearfix"></div>
	 </div>
	 	<div class ="sp-content">
	 		<div class="container">
	 			<div class="sp1">
	 				<div class="container-sp2">
						<div class="img-sp1">
							<img src="#" alt="#">
						</div>
	 				</div>
	 			</div>
	 			<div class="sp1">
	 				<div class="container-sp2">
						<div class="img-sp1">

							<p> Ten San Pham <!-- Dien ten san pham thay cho nay --> </p>
						</div>
						<div class = "infor-sp1">
							<div class="infor-sp1-I">
								<table>
									<tr>
										<td>Gia Tri: </td>
										<td style="text-decoration: line-through;padding-left: 5px;">200.000d</td>
									</tr>
								</table>
							</div>
							<div class="infor-sp1-r">
								<p>1.500.000d</p>
								<br>
							</div>
							<br>
							<br>
							<br>
							
							
							<p><span style="font-weight: lighter; font-size: 13px;">Service Charges : <span></p>
							
							
							<div class="clear"></div>
						</div>
	 				</div>
	 			</div>
	 			<div class="sp1">
	 				<div class="container-sp2">
						<div class="main-img">
							<div class="close1"> </div>	

						</div>
	 				</div>
	 			</div>
	 			<div class="sp1">
	 				<div class="container-sp2">
						<div class="main-img">
							<div class=" cart-total">
			 <a class="continue" href="#">Continue to basket</a>
			 <div class="price-details">
				 <h3>Price Details</h3>
				 <span>Total</span>
				 <span class="total1">6200.00</span>
				 <span>Discount</span>
				 <span class="total1">---</span>
				 <span>Delivery Charges</span>
				 <span class="total1">150.00</span>
				 <div class="clearfix"></div>				 
			 </div>	
			 <ul class="total_price">
			   <li class="last_price"> <h4>TOTAL</h4></li>	
			   <li class="last_price"><span>6350.00</span></li>
			   <div class="clearfix"> </div>
			 </ul>
			
			 
			 <div class="clearfix"></div>
			 <a class="order" href="#">Apply Coupons</a>
			 <div class="total-item">
			 </div>
			</div>
						</div>
	 				</div>
	 			</div>
	 	</div>
	 <div class="footer">
	<div class="container">
	   <div class="footer_top">
		<div class="col-md-4 box_3">
			<h3>Our Stores</h3>
			<address class="address">
              <p>Dai Hoc FPT </p>
              <dl>
                 <dt></dt>
                 <dd>Freephone:<span> 01632739212</span></dd>
                 <dd>E-mail:&nbsp; <a href="#">info(at)gayshop.com</a></dd>
              </dl>
           </address>
           <ul class="footer_social">
			  <li><a href=""> <i class="fb"> </i> </a></li>
			  <li><a href=""><i class="tw"> </i> </a></li>
			  <li><a href=""><i class="google"> </i> </a></li>
			  <li><a href=""><i class="instagram"> </i> </a></li>
		   </ul>
		</div>
		<div class="col-md-4 box_3">
			<h3>Blog Posts</h3>
			<h4><a href="#">Sed ut perspiciatis unde omnis</a></h4>
			<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced</p>
			<h4><a href="#">Sed ut perspiciatis unde omnis</a></h4>
			<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced</p>
			<h4><a href="#">Sed ut perspiciatis unde omnis</a></h4>
			<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced</p>
		</div>
		<div class="col-md-4 box_3">
			<h3>Support</h3>
			<ul class="list_1">
				<li><a href="#">Terms & Conditions</a></li>
				<li><a href="#">FAQ</a></li>
				<li><a href="#">Payment</a></li>
				<li><a href="#">Refunds</a></li>
				<li><a href="#">Track Order</a></li>
				<li><a href="#">Services</a></li>
			</ul>
			<ul class="list_1">
				<li><a href="#">Services</a></li>
				<li><a href="#">Press</a></li>
				<li><a href="#">Blog</a></li>
				<li><a href="#">About Us</a></li>
				<li><a href="#">Contact Us</a></li>
			</ul>
			<div class="clearfix"> </div>
		</div>
		<div class="clearfix"> </div>
		</div>
		<div class="footer_bottom">
			<div class="copy">
	        </div>
	    </div>
	</div>
</div>
             </form>
</body>
</html>

