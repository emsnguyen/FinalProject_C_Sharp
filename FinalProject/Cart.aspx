<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs"
    MasterPageFile="~/Master.Master"
    Inherits="FinalProject.Cart" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/cart.css" rel="stylesheet" type="text/css" media="all" />
    <div class="sp-content">
        <div class="container">
            <%="" %>
            <% double TotalPrice = 0; %>
            <% if (orders.Count == 0)
                { %>
            <h4>
                Your cart is empty!
            </h4>
            <% }
            else
            { %>
            <table border="1" class="table-condensed" style="text-align: center">
                <tr>
                    <th style="height: 21px">Product Name</th>
                    <th style="height: 21px">Image</th>
                    <th style="height: 21px">Unit Price</th>
                    <th style="height: 21px">Quantity</th>
                    <th style="height: 21px">Total Price</th>
                </tr>
                <%
                    foreach (var item in orders)
                    {
                        TotalPrice += Convert.ToDouble(item.Product.Price * item.Quantity);%>
                <tr>
                    <td><%= item.Product.Name %></td>
                    <td>
                        <img width="200" height="200" src="<%= item.Product.Image %>" />
                    </td>
                    <%
                        string unitPrice = String.Format("{0:n}", item.Product.Price);
                    %>
                    <td><%= unitPrice %> VND</td>
                    <td><%= item.Quantity %></td>
                    <% double total = Convert.ToDouble(item.Product.Price * item.Quantity);
                        string sTotal = String.Format("{0:n}", total);
                        %>
                    <td><%= sTotal %> VND</td>
                </tr>
                <%} %>
                <%
                    } %>
            </table>
            <% string totalPrice = TotalPrice.ToString("N"); %>
            <p style="color: red"><b>Total : <%= totalPrice %> VND</b></p>
            <asp:Button ID="Button1" runat="server" Text="Confirm Order" BackColor="Lime" CssClass="btn active" OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>
