<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="FinalProject.Transaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: #efefef;">
    <form id="form1" runat="server">
    <div style="display: flex; justify-content: center; align-items: center; flex-direction: column; margin: 100px auto; max-width: 700px; height: 100%;">
        
        <img src="<%= image %>" width="<%= width %>" height="<%= height %>"/><br />
        &nbsp;<asp:Label ID="TransactionLabel" runat="server" Text="Label" Font-Bold="True" Font-Size="36px"></asp:Label>
        <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick">
        </asp:Timer>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
    </div>
    </form>
</body>
</html>
