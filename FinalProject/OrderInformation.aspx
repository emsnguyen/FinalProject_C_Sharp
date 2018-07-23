<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="OrderInformation.aspx.cs" Inherits="FinalProject.CompleteOrderInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>


        <table class="size_3">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Delivery Information" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <br />
                    <br />
                    <table class="size_3" style="width: 48%">
                        <tr>
                            <td style="width: 121px; height: 20px;">
                                <asp:Label ID="Label2" runat="server" Text="Customer's name:"></asp:Label>
                            </td>
                            <td style="height: 20px">
                                <asp:Label ID="customerName" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 121px">
                                <asp:Label ID="Label3" runat="server" Text="Address:"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="address" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 121px">
                                <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="email" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 121px">
                                <asp:Label ID="Label5" runat="server" Text="Phone:"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Proceed Payment" Width="200px" Font-Bold="True" Font-Size="Large" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Edit Information" Width="200px" Font-Bold="True" Font-Size="Large" />
                    <br />
                    <br />
                    <div style="border: 1px solid black; line-height: 30px; width: 537px; padding: 20px;">
                    <table class="size_3" style="width: 101%">
                        <tr>
                            <td style="width: 121px; height: 20px;">
                                <asp:Label ID="Label10" runat="server" Text="Customer's name:"></asp:Label>
                            </td>
                            <td style="height: 20px; width: 382px;">
                                <asp:TextBox ID="TextBox1" runat="server" Width="321px" Height="20px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 121px">
                                <asp:Label ID="Label11" runat="server" Text="Address:"></asp:Label>
                            </td>
                            <td style="width: 382px">
                                <textarea id="TextArea1" name="S1" style="width: 326px; height: 84px;"></textarea></td>
                        </tr>
                        <tr>
                            <td style="width: 121px">
                                <asp:Label ID="Label12" runat="server" Text="Email:"></asp:Label>
                            </td>
                            <td style="width: 382px">
                                <asp:TextBox ID="TextBox3" runat="server" Width="322px" Height="20px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 121px">
                                <asp:Label ID="Label13" runat="server" Text="Phone:"></asp:Label>
                            </td>
                            <td style="width: 382px">
                                <asp:TextBox ID="TextBox4" runat="server" Width="322px" Height="20px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    </div>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>


    </div>
</asp:Content>