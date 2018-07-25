<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="SearchProduct.aspx.cs" Inherits="FinalProject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <link href="css/home.css" rel="stylesheet" type="text/css" media="all" />
  <div class ="sp-content">
			<div class="container">
                <% foreach (var item in list) { %>
				<div class="sp1">
					<div class="container-sp2">
						<div class="img-sp1">
							<img src="<%= item.Image %>" alt="#">
							<p> <%= item.Name %> </p>
						</div>
						<div class = "infor-sp1">
							<div class="infor-sp1-I">
								<table>
									<tr>
										
										
									</tr>
								</table>
								<br>
								
							</div>
							<div class="infor-sp1-r">
								<p><%=item.Price %>d</p>
                                <a href="Details.aspx?productID=<%= item.ID%>">Xem</a>
							    <br />
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
                <% } %>
			</div>
		</div>
</asp:Content>
