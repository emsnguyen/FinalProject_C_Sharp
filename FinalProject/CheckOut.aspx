<%@ Page Language="C#" AutoEventWireup="true" 
    MasterPageFile="~/Master.Master"
    CodeBehind="CheckOut.aspx.cs" Inherits="FinalProject.CheckOut" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/checkOut.css" rel="stylesheet" />
        <div class="sp-content">
            <div class="container">
                <div class="sp1">
                    <div class="container-sp2">
                        <div class="img-sp1">
                            <img src="#" alt="#">
                        </div>
                    </div>
                </div>
                <div class="sp1">
                    <div class="container-sp2">
                        <div class="img-sp1">

                            <p>
                                Ten San Pham
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


                            <p><span style="font-weight: lighter; font-size: 13px;">Service Charges : </span></p>


                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="sp1">
                    <div class="container-sp2">
                        <div class="main-img">
                            <div class="close1"></div>

                        </div>
                    </div>
                </div>
                <div class="sp1">
                    <div class="container-sp2">
                        <div class="main-img">
                            <div class=" cart-total">
                                <a class="continue" href="#">Continue to basket</a>
                                <div class="price-details">
                                    <h3>Price Details</h3>
                                    <span>Total</span>
                                    <span class="total1">6200.00</span>
                                    <span>Discount</span>
                                    <span class="total1">---</span>
                                    <span>Delivery Charges</span>
                                    <span class="total1">150.00</span>
                                    <div class="clearfix"></div>
                                </div>
                                <ul class="total_price">
                                    <li class="last_price">
                                        <h4>TOTAL</h4>
                                    </li>
                                    <li class="last_price"><span>6350.00</span></li>
                                    <div class="clearfix"></div>
                                </ul>


                                <div class="clearfix"></div>
                                <a class="order" href="#">Apply Coupons</a>
                                <div class="total-item">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
    