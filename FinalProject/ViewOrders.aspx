<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master.Master"
    CodeBehind="ViewOrders.aspx.cs" Inherits="FinalProject.ViewOrders" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
    <asp:GridView ID="gvOrders" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="ID">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
            <asp:BoundField DataField="DeliveredDate" HeaderText="DeliveredDate" SortExpression="DeliveredDate" />
            <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=PRN292_Project;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>
</div>
</asp:Content>
