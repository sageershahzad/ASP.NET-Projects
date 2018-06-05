<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckListBox.aspx.cs" Inherits="CheckboxListSelectDeselect.CheckListBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                <asp:ListItem Text="Diploma" Value="1"></asp:ListItem>
                <asp:ListItem Text="Graduate" Value="2"></asp:ListItem>
                <asp:ListItem Text="Post graduate" Value="3"></asp:ListItem>
                <asp:ListItem Text="Mediacal" Value="4"></asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <br />
            <asp:ListBox ID="ListBox1" runat="server" Height="120px" SelectionMode="Multiple" Width="191px"></asp:ListBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
