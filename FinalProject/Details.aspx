<%@ Page Language="C#" AutoEventWireup="true"
    MasterPageFile="~/Master.Master"
    CodeBehind="Details.aspx.cs" Inherits="FinalProject.Details" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/Details.css" rel="stylesheet" />
    <div class="sp-content">
        <div class="container">
            <div class="sp1">
                <div class="container-sp2">
                    <div class="img-sp1">
                        <img src="<%=product.Image%>" alt="#">
                    </div>
                </div>
            </div>
            <div class="sp1">
                <div class="container-sp2">
                    <div class="img-sp1">
                        <p><%=product.Name %>
                        </p>
                    </div>
                    <div class="infor-sp1">
                        <div class="infor-sp1-r">
                            <p><%=String.Format("{0:n}", product.Price) %>VND</p>
                        </div>
                        <div class="input-quality">
                            <asp:Button ID="Button2" runat="server" Text="-" OnClick="Button2_Click" />
                            <asp:TextBox ID="txtQuantity" Style="text-align: center" runat="server" Width="27px" Enabled="False">1</asp:TextBox>
                            <asp:Button ID="Button3" runat="server" Text="+" OnClick="Button3_Click" />
                            <br />
                            <br />
                        </div>
                        <div class="infor-sp1-r" style="margin-left: 0px">
                            <br>
                            <a class="link-as-button"
                                href="Cart.aspx?productID=<%= product.ID %>&quantity=<%= txtQuantity.Text %>">Thêm vào giỏ hàng</a>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
            <div class="sp1">
                <%= product.Description %>
            </div>
        </div>
    </div>
</asp:Content>