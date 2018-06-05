<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="RadioButton.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset style="width: 300px">
                <legend><b>Gender</b></legend>
        <asp:RadioButton ID="MaleRadioButton" runat="server" GroupName="radioSexes" Text="Male" />
        <asp:RadioButton ID="FemaleRadioButton" runat="server" GroupName="radioSexes" Text="Female" />
        <asp:RadioButton ID="UnknownRadioButton" runat="server" GroupName="radioSexes" Text="Unknown" />

            </fieldset>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
            <asp:Label ID="GenderMessageLabel" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:DropDownList ID="ContinentsDropDownList" runat="server" Height="25px" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="ContinentsDropDownList_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:DropDownList ID="CountriesDropDownList" runat="server" Height="25px" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="CountriesDropDownList_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:DropDownList ID="CitiesDropDownList" runat="server" Height="25px" Width="200px">
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
