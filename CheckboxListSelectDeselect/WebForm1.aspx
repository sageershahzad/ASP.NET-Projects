<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CheckboxListSelectDeselect.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Text="Diploma" Value="1"></asp:ListItem>
                <asp:ListItem Text="Graduate" Value="2"></asp:ListItem>
                <asp:ListItem Text="Post graduate" Value="3"></asp:ListItem>
                <asp:ListItem Text="Mediacal" Value="4"></asp:ListItem>
            </asp:CheckBoxList>

            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Select One" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Select All" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Deselect All" OnClick="Button3_Click" />

        </div>
    </form>
</body>
</html>
