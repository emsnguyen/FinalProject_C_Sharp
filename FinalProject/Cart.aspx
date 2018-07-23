<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="FinalProject.Cart" %>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="css/login.css" rel='stylesheet' type='text/css' />
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
	<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/cart.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
    <form>
   <div class="header_top">
	<div class="container">
		<div class="one-fifth column row_1">
			
		 </div>
		 <div class="cssmenu">
			<ul>
			   <li class="active"><a href="Login.aspx">My Account</a></li> 
			</ul>
		 </div>
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
							<input type="checkbox">
	 				</div>
	 			</div>
	 			<div class="sp1">
	 				<div class="container-sp2">
						<div class="img-sp1">
								Sản Phẩm
						</div>
	 				</div>
	 			</div>
	 			<div class="sp1">
	 				<div class="container-sp2">
						
							
					</div>
				</div>
							
								<div class="sp1">
	 				<div class="container-sp2">
								<p style="padding-left: 35px;">Đơn giá</p>
								
								</div>
						</div>
						<div class="sp1">
	 				<div class="container-sp2">
								<div class="input-quality" > 
								<p style="padding-left: 75px;">Số lượng</p>
							</div>
							</div>
						</div>
						<div class="sp1">
	 				<div class="container-sp2">
						
								<p style="font-size: 17px;font-weight: bold;color: red;padding-left: 105px;">
							Số tiền
							</p>
					</div>
				</div>
					<div class="sp1">
	 				<div class="container-sp2">
						
								<a  style="font-size: 17px;padding-left: 110px;">
							 Thao tác
							</a>
					</div>
				</div>



				<!-- bắt đầu vòng lặp từ đây -->
	 			<div class="sp1">
	 				<div class="container-sp2">
							<input type="checkbox">
	 				</div>
	 			</div>
	 			<div class="sp1">
	 				<div class="container-sp2">
						<div class="img-sp1">
							<img src="https://1.bp.blogspot.com/-hK6hMiPhmwk/W1Gj9xu_LWI/AAAAAAAAHiE/uHu-TJQyuxY6FLQi0ap4AyH1F4WNKxuKgCLcBGAs/s1600/0002.jpg?imgmax=0" alt="#">
						</div>
	 				</div>
	 			</div>
	 			<div class="sp1">
	 				<div class="container-sp2">
						
								<p>
							 Ten San Pham <!-- Dien ten san pham thay cho nay --> 
							</p>
					</div>
				</div>
							
								<div class="sp1">
	 				<div class="container-sp2">
									<table>
										<tr>
											<td style="padding-left: 10px;" >Gia Tri: </td>
											<td style="	padding-left: 5px;">200.000d</td>
										</tr>
									</table>
								</div>
						</div>
						<div class="sp1">
	 				<div class="container-sp2">
								<div class="input-quality" style="padding-left: 50px;"> 
								<button class="button-outline">-</button>
								<input class="button-outline button-outline-mid" type="" name="" value="1">
								<button class="button-outline">+</button>
							</div>
							</div>
						</div>
						<div class="sp1">
	 				<div class="container-sp2">
						
								<p style="font-size: 17px;font-weight: bold;color: red;padding-left: 100px;">
							 1.500.00d 
							</p>
					</div>
				</div>
					<div class="sp1">
	 				<div class="container-sp2">
						
								<a  style="font-size: 17px;padding-left: 130px;">
							 Xóa
							</a>
					</div>
				</div>
				<!-- kết thúc vòng for	 -->
								
							
<div class="sp1">
	 				<div class="container-sp2">
							<input type="checkbox">
	 				</div>
	 			</div>
	 			<div class="sp1">
	 				<div class="container-sp2">
						<div class="img-sp1">
								Chọn tất cả sản phẩm
						</div>
	 				</div>
	 			</div>
	 			<div class="sp1">
	 				<div class="container-sp2">
						
							
					</div>
				</div>
							
								<div class="sp1">
	 				<div class="container-sp2">
								
								
								</div>
						</div>
						<div class="sp1">
	 				<div class="container-sp2">
								<div class="input-quality" > 
								<p style="padding-left: 75px;">Tổng số tiền</p>
							</div>
							</div>
						</div>
						<div class="sp1">
	 				<div class="container-sp2">
						
								<p style="font-size: 17px;font-weight: bold;color: red;padding-left: 105px;">
							$60000
							</p>
					</div>
				</div>
					<div class="sp1">
	 				<div class="container-sp2">
						
								<div class="infor-sp1-r">
									<button>Mua Hàng</button>
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
