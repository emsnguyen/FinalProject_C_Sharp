<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="OrderInformation.aspx.cs" Inherits="FinalProject.CompleteOrderInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-bottom: 0px; max-width: 1200px; margin: 10px auto; box-shadow: 0px 0px 12px rgba(0,0,0,0.3); padding: 30px 100px; border-radius: 11px;">
        <table class="size_3" style="height: 256px">
            <tr>
                <td class="modal-lg" style="width: 576px">
                    <asp:Label ID="Label1" runat="server" Text="Delivery Information" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <br />
                    <br />
                    <table class="size_3" style="width: 95%">
                        <tr>
                            <td style="width: 121px; height: 20px;">
                                <asp:Label ID="Label2" runat="server" Text="Customer's name:"></asp:Label>
                            </td>
                            <td style="height: 20px">
                                <asp:Label ID="customerName" runat="server" Text="Label" Font-Bold="True"></asp:Label>
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
                                <asp:Label ID="phoneNumber" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Proceed Payment" Width="200px" Font-Bold="True" Font-Size="Large" OnClick="Button1_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Edit Information" Width="200px" Font-Bold="True" Font-Size="Large" OnClick="Button2_Click" />
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    <div style="border: 1px dotted grey; border-radius: 11px; line-height: 30px; width: 537px; padding: 20px; box-sizing: border-box;" runat="server" id="InfoDiv" >
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
                                <textarea id="TextArea1" name="address" style="width: 326px; height: 84px;" runat="server" cols="20" rows="1"></textarea></td>
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
                        <tr>
                            <td colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="saveButton" runat="server" OnClick="saveButton_Click" Text="Save" Width="80px" />
&nbsp; &nbsp;&nbsp;
                                <asp:Button ID="clearButton" runat="server" OnClick="clearButton_Click" Text="Clear" Width="80px" />
                            </td>
                        </tr>
                    </table>
                    </div>
                </td>
            </tr>
        </table>


    </div>
</asp:Content>