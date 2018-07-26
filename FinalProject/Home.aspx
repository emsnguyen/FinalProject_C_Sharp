<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FinalProject.Home" %>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="css/login.css" rel='stylesheet' type='text/css' />
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
	<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/home.css" rel="stylesheet" type="text/css" media="all" />

	<style type="text/css">
		#productID {
			width: 113px;
		}

		.paging {
			text-align: center;
			font-size: 18px;
			color: gray;
		}

			.paging a {
				padding: 0 15px;
			}

		.currentPage {
			color: black;
			pointer-events: none;
		}
	</style>

</head>
<body>
	<form id="form1" runat="server">

		<div class="header_bottom men_border">
			<div class="container">
				<div class="col-xs-8 header-bottom-left">
					<div class="col-xs-2 logo">
						<h1><a href="Home.aspx"><span>Trang chủ</span></a></h1>
					</div>
					<div class="col-xs-6 menu">
						<ul class="megamenu skyblue">
							<li class="grid"><a class="color2" href="Other.aspx">Phụ kiện</a></li>
							<li>
								<% if (Session["userID"] == null)
									{ %>
								<asp:HyperLink ID="LoginLink" 
									CssClass="color2"
									runat="server" NavigateUrl="~/Login.aspx">Đăng nhập</asp:HyperLink>
								<%}
								else
								{%>
								<asp:LinkButton ID="linkLogout" 
									CssClass="color1"
									runat="server" OnClick="linkLogout_Click"
									>Đăng xuất</asp:LinkButton>
								<%} %>

							</li>
						</ul>
					</div>
				</div>
				<div class="col-xs-4 ">
					<div class="box_1-cart">
						<div class="box_11">
							<a href="Cart.aspx">
								<h4>Giỏ hàng: <span class="simpleCart_total"></span>(<span id="simpleCart_quantity" class="simpleCart_quantity"></span> <%= TotalItems  %>)
									<img src="images/bag.png" alt="" /><span class="clearfix"></span>
								</h4>
							</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="search">
						<asp:TextBox ID="txtSearch" CssClass="textbox" value="" runat="server"></asp:TextBox>
						<asp:Button ID="btnSearch" runat="server" Text="Submit" />
						<div id="response"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<div class="sp-content">
			<div class="container">
				<%="" %>
				<% foreach (var item in list)
					{ %>
				<div class="sp1">
					<div class="container-sp2">
						<div class="img-sp1">
							<img src="<%= item.Image %>" alt="#">
							<p><%= item.Name %> </p>
						</div>
						<div class="infor-sp1">
							<div class="infor-sp1-I">
								<table>
									<tr>
									</tr>
								</table>
								<br>
							</div>
							<div class="infor-sp1-r">
								<p><%=String.Format("{0:n}", item.Price) %>đ</p>
								<a href="Details.aspx?productID=<%= item.ID%>">Xem</a>
								<br />
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
				<% } %>
			</div>
			<div class="paging">
				<%= FinalProject.Utils.HtmlHelper.Paging(CurrentPage, PageGap, TotalPage) %>
			</div>
		</div>
		<div class="footer">
			<div class="container">
				<div class="footer_top">
					<div class="col-md-4 box_3">
						<h3>Liên hệ</h3>
						<address class="address">
							<p>Đại học FPT </p>
							<dl>
								<dt></dt>
								<dd>Điện thoại:<span> 01632739212</span></dd>
								<dd>E-mail:&nbsp; <a href="#">teamgay.fpt@gmail.com</a></dd>
							</dl>
						</address>
						<ul class="footer_social">
							<li><a href="#"><i class="fb"></i></a></li>
							<li><a href="#"><i class="tw"></i></a></li>
							<li><a href="#"><i class="google"></i></a></li>
							<li><a href="#"><i class="instagram"></i></a></li>
						</ul>
					</div>
					<div class="col-md-4 box_3">
						<h3>Được tạo bởi</h3>
						<h4><a href="#">PhongVH</a></h4>
						<h4><a href="#">HuyNG</a></h4>
						<h4><a href="#">AnhPT</a></h4>
						<h4><a href="#">SonHLT</a></h4>
						<h4><a href="#">MienNTH</a></h4>
					</div>
					<div class="col-md-4 box_3">
						<h3>Hỗ trợ</h3>
						<ul class="list_1">
							<li><a href="#">Điều khoản</a></li>
							<li><a href="#">Các câu hỏi thường gặp</a></li>
							<li><a href="#">Theo dõi đơn hàng</a></li>
							<li><a href="#">Dịch vụ</a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
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
