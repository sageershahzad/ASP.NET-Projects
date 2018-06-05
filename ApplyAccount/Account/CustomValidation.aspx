<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomValidation.aspx.cs" Inherits="ApplyAccount.Account.CustomValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- #region CustomValidation -->

            <table style="width: 100%;">
                <tr>
                    <td>
                        <asp:Label ID="lblPositiveIntegerNumber" runat="server" Text="Please enter a positive integer number:"></asp:Label>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="PositiveIntegerNumberTextBox" runat="server" Width="200"></asp:TextBox>
                        <asp:CustomValidator ID="PositiveIntegerNumberCustomValidator" runat="server" 
                                             ErrorMessage="Not an even Number" ControlToValidate="PositiveIntegerNumberTextBox" 
                                             OnServerValidate="PositiveIntegerNumberCustomValidator_ServerValidate"
                                             ForeColor="Red" ValidateEmptyText="True"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButton_Click" />
                    </td>
                </tr>
            </table>

            <!-- #endregion -->
        </div>
    </form>
</body>
</html>
