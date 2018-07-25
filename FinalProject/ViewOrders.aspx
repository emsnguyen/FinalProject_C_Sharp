<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master.Master"
    CodeBehind="ViewOrders.aspx.cs" Inherits="FinalProject.ViewOrders" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/ViewOrders.css" rel="stylesheet" />
    <div>
        <table>
            <tr>
                <th>Order ID</th>
                <th>Customer ID</th>
                <th>Total</th>
                <th>Payment Method</th>
                <th>Payment Status</th>
            </tr>
            <%
                foreach (var item in orders)
                {
            %>
            <tr>
                <% int orderID = item.Order_Pay.ElementAt(0).OrderID; %>
                <td>
                    <%= orderID %>
                    <input type="hidden" value="<%= orderID %>"/>
                </td>
                <td>
                    <%= item.UserID %>
                </td>
                <td>
                    <%= item.Total %>
                </td>
                <td>
                    <%= item.Order_Pay.ElementAt(0).PaymentMethod.PaymentMethod1 %>
                </td>
                <td>
                    <%= item.Order_Pay.ElementAt(0).PaymentStatus %>
                </td>
            </tr>
            <%} %>
        </table>

    </div>
</asp:Content>
