<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="FinalProject.singleIndex" %>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="css/login.css" rel='stylesheet' type='text/css' />
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
	<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/Details.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
<div class="header_top">
	<div class="container">
		<div class="one-fifth column row_1">
			<span class="selection-box"><select class="domains valid" name="domains">
			   <option>English</option>
			   <option>French</option>
			   <option>German</option>
			</select></span>
		 </div>
		 <div class="cssmenu">
			<ul>
			   <li class="active"><a href="login.html">My Account</a></li> 
			</ul>
		 </div>
	</div>
</div>	
 <div class="header_bottom men_border">
		<div class="container">
			<div class="col-xs-8 header-bottom-left">
				<div class="col-xs-2 logo">
					<h1><a href="Home.aspx"><span>Buy</span>shop</a></h1>
				</div>
				<div class="col-xs-6 menu">
					<ul class="megamenu skyblue">
					  <li><a class="color1" href="guitar.aspx">Guitar</a><div class="megapanel">
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
					<li class="grid"><a class="color2" href="#">Other</a>
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
				<li><a class="color6" href="contact.html">Support</a></li>
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
						<div class="main-img">
							<img src="<%=product.Image%>" alt="#">
						</div>
					</div>
				</div>
				<div class="sp1">
					<div class="container-sp2">
						<div class="img-sp1">
							<p> <%=product.Name %> <!-- Dien ten san pham thay cho nay --> </p>
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
								<p><%=product.Price %> VND</p>
								<br>
							</div>
							<br>
							<br>
							<br>
							<p><span style="font-weight: lighter; font-size: 13px;">Miễn Phí Vận Chuyển khi đạt mức giá trị đơn hàng tối thiểu</span></p>
							<p><span style="font-weight: lighter; font-size: 13px;">Vẫn chuyển tới: </span></p>
							<p><span style="font-weight: lighter; font-size: 13px;">Phí chuyển tới: </span></p>

							<div class="input-quality">
								<button class="button-outline">-</button>
								<input class="button-outline button-outline-mid" type="" name="" value="1">
								<button class="button-outline">+</button>
							</div>
							<div class="infor-sp1-r" style="margin-left: 0px">
								<br>
                                
							
							<button style="background: #794044">THÊM VÀO GIỎ HÀNG</button>
							</div>
							<div class="clear"></div>
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
</body>
</html>
