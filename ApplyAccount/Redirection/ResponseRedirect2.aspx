<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResponseRedirect2.aspx.cs" Inherits="ApplyAccount.Redirection.ResponseRedirect2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Hi I am redirected from Redirect Responce Web Form:
            <asp:Button ID="RedirectResponse2Button" runat="server" Text="Go Back" OnClick="RedirectResponse2Button_Click"/>
        </div>
    </form>
</body>
</html>
