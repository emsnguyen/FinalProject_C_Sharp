<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master.Master"
    CodeBehind="ViewOrders.aspx.cs" Inherits="FinalProject.ViewOrders" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/ViewOrders.css" rel="stylesheet" />
    <h3>List of orders</h3>
    <asp:GridView ID="gvOrders" runat="server" 
        CssClass="gvOrders"
        AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" SortExpression="OrderID" />
            <asp:BoundField DataField="PaymentMethodID" HeaderText="PaymentMethodID" SortExpression="PaymentMethodID" />
            <asp:CheckBoxField DataField="PaymentStatus" HeaderText="PaymentStatus" SortExpression="PaymentStatus" />
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" SortExpression="AccountNumber" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>

    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="Data Source=localhost;Initial Catalog=PRN292_Project;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" 
        DeleteCommand="DELETE FROM [Order_Pay] WHERE [ID] = @ID" 
        InsertCommand="INSERT INTO [Order_Pay] ([OrderID], [PaymentMethodID], [PaymentStatus], [AccountNumber]) VALUES (@OrderID, @PaymentMethodID, @PaymentStatus, @AccountNumber)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Order_Pay]" 
        UpdateCommand="UPDATE [Order_Pay] SET [PaymentStatus] = @PaymentStatus WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OrderID" Type="Int32" />
            <asp:Parameter Name="PaymentMethodID" Type="Int32" />
            <asp:Parameter Name="PaymentStatus" Type="Boolean" />
            <asp:Parameter Name="AccountNumber" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PaymentStatus" Type="Boolean" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
