<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="FinalProject.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/Details.css" rel="stylesheet" type="text/css" media="all" />

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
                        <p>
                            <%=product.Name %>
                            <!-- Dien ten san pham thay cho nay -->
                        </p>
                    </div>
                    <div class="infor-sp1">
                        <div class="infor-sp1-I">
                            <table>
                                <tr>
                                    <td>Gia Tri: </td>
                                    <td style="text-decoration: line-through; padding-left: 5px;">200.000d</td>
                                </tr>
                            </table>
                        </div>
                        <div class="infor-sp1-r">
                            <p><%=product.Price %> VND</p>
                            <br>
                        </div>
                        <br>
                        <br>
                        <br>
                        <p><span style="font-weight: lighter; font-size: 13px;">Miễn Phí Vận Chuyển khi đạt mức giá trị đơn hàng tối thiểu</span></p>
                        <p><span style="font-weight: lighter; font-size: 13px;">Vẫn chuyển tới: </span></p>
                        <p><span style="font-weight: lighter; font-size: 13px;">Phí chuyển tới: </span></p>

                        <div class="input-quality">
                            <button class="button-outline">-</button>
                            <input class="button-outline button-outline-mid" type="" name="" value="1">
                            <button class="button-outline">+</button>
                        </div>
                        <div class="infor-sp1-r" style="margin-left: 0px">
                            <br>
                            <button style="background: #ff0033" type="">MUA NGAY</button>
                            <button style="background: #794044">THÊM VÀO GIỎ HÀNG</button>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
