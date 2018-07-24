<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FinalProject.Home" MasterPageFile="~/Master.Master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
										<td>Gia Tri: </td>
										
									</tr>
								</table>
								<br>
								
							</div>
							<div class="infor-sp1-r">
								<p><%=item.Price %>d</p>
								<button id="button">XEM</button>
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
				 <% } %>
			</div>
		</div>
</asp:Content>