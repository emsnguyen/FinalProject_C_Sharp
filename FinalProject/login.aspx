<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinalProject.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="single_top">
        <div class="container">
            <div class="register">
                <div class="col-md-6 login-right">
                    <h3>REGISTERED CUSTOMERS</h3>
                    <p>If you have an account with us, please log in.</p>

                    <div>
                        <span>Username<label>*</label></span>
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                        &nbsp;
                    </div>
                    <div>
                        <span>Password<label>*</label></span>
                        <asp:TextBox ID="txtPassword" runat="server" Height="38px" TextMode="Password" Width="662.39px"></asp:TextBox>
                        &nbsp;
                    </div>
                    <a class="forgot" href="#">Forgot Your Password?</a>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                    &nbsp;&nbsp;&nbsp;
				  <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				  <asp:Label ID="lblMessage" runat="server" CssClass="error-404" ForeColor="Red"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
