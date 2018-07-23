<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="FinalProject.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>

        #payment td {
            vertical-align: top;
            padding-left: 10px;
            line-height: 30px;
        }

        #creditCardBox {
            padding-left: 10px;
            line-height: 40px;
        }

        .auto-style1 {
            width: 589px;
            height: 20px;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            width: 589px;
            height: 130px;
        }

        .auto-style4 {
            height: 46px;
        }

        .auto-style5 {
            height: 130px;
        }

    </style>
    <div style="margin-bottom: 0px">
        <table id="payment" class="size_3" style="padding-left: 20px">
            <tr>
                <td class="auto-style3" style="border-bottom: 1px dotted black;">
                    <asp:Label ID="Label1" runat="server" Text="1. Choose Delivery Service" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <br />
                    <br />
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Standard Delivery: FREE" Checked="True" />
                    <br />
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" Text="Delivery Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Edit" Width="100px" />
                    <br />
                    -----------------------------------------------------------------<br />
                    <asp:Label ID="customerName" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="address" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="email" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="phoneNumber" runat="server" Text="Label"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="2. Choose Payment Method" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <br />
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem Value="1">COD - Cash On Delivery</asp:ListItem>
                        <asp:ListItem Value="2">VISA, Mastercard</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <div style="width: 509px; border: 1px solid black;" id="creditCardBox">
                        <asp:Label ID="Label3" runat="server" Text="VISA, Mastercard Information" Font-Bold="True"></asp:Label>
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Card number:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" Width="228px" Height="20px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Name on the card:"></asp:Label>
&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" Width="224px" Height="20px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="Expired date:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox3" runat="server" Width="171px" Height="20px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label7" runat="server" Text="Security code:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox4" runat="server" Width="71px" Height="20px"></asp:TextBox>
&nbsp;</div>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" Text="Order"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Edit" Width="100px" />
                    <br />
                    -----------------------------------------------------------------<br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" Width="283px">
                        <Columns>
                            <asp:BoundField DataField="productName" HeaderText="Product" />
                            <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                            <asp:BoundField DataField="price" HeaderText="Price" />
                        </Columns>
                    </asp:GridView>
                    -----------------------------------------------------------------<br />
                    <asp:Label ID="Label10" runat="server" Text="Subtotal (x items):"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="subtotalPrice" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label11" runat="server" Text="Discount (%):"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="discountAmount" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label12" runat="server" Text="Shipping Fee: FREE"></asp:Label>
                    <br />
                    <asp:Label ID="Label13" runat="server" Text="Total:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="totalPrice" runat="server" Text="Label"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label14" runat="server" Text="VAT included, where applicable"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style4">
&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Place Order" Font-Bold="True" Font-Size="Large" Width="200px" />
&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Cancel Order" Font-Bold="True" Font-Size="Large" Width="200px" />
                    <br />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
