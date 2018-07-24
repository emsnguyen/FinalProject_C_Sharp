<%@ Page Language="C#" AutoEventWireup="true"
    MasterPageFile="~/Master.Master"
    CodeBehind="Details.aspx.cs" Inherits="FinalProject.singleIndex" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/Details.css" rel="stylesheet" type="text/css" media="all" />
    <div class="sp-content">
        <div class="container">
            <div class="sp1">
                <div class="container-sp2">
                    <div class="img-sp1">
                        <img src="https://1.bp.blogspot.com/-hK6hMiPhmwk/W1Gj9xu_LWI/AAAAAAAAHiE/uHu-TJQyuxY6FLQi0ap4AyH1F4WNKxuKgCLcBGAs/s1600/0002.jpg?imgmax=0" alt="#">
                    </div>
                </div>
            </div>
            <div class="sp1">
                <div class="container-sp2">
                    <div class="img-sp1">
                        <p>Ten San Pham
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
                            <p>1.500.000d</p>
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
                            <input class="button-outline button-outline-mid" type="number" name="" value="1">
                            <button class="button-outline">+</button>
                        </div>
                        <div class="infor-sp1-r" style="margin-left: 0px">
                            <br>
                            <button style="background: #ff0033">MUA NGAY</button>
                            <button style="background: #794044">THÊM VÀO GIỎ HÀNG</button>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


