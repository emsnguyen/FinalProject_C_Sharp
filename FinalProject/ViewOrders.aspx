<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master.Master"
    CodeBehind="ViewOrders.aspx.cs" Inherits="FinalProject.ViewOrders" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/ViewOrders.css" rel="stylesheet" />
    <div>
        <asp:GridView ID="gvOrders" CssClass="table-order" runat="server"></asp:GridView>
    </div>
</asp:Content>