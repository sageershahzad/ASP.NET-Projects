﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationSummary.aspx.cs" Inherits="ApplyAccount.Account.ValidationSummary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 228px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- #region Validation-Summary -->

            <table style="border: 1px solid black">
        <tr>
            <td colspan="2">
                <h2>User Registration</h2>
            </td>
        </tr>
        <tr>
            <td>
                <b>Email</b>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtEmail" runat="server" Width="100px">
                </asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" 
                runat="server" ForeColor="Red"
                ErrorMessage="Email is required"
                ControlToValidate="txtEmail" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" 
                runat="server" ErrorMessage="Invalid Email Format"
                ControlToValidate="txtEmail" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                Text="*">
                </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <b>User Name</b>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtUserName" runat="server" Width="100px">
                </asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" 
                runat="server" ForeColor="Red"
                ErrorMessage="Username is required"
                ControlToValidate="txtUserName" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <b>Password</b>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtPassword" runat="server" Width="100px" 
                TextMode="Password"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" 
                runat="server" ForeColor="Red"
                ErrorMessage="Password is required"
                ControlToValidate="txtPassword" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <b>Confirm Password</b>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" 
                Width="100px"></asp:TextBox>

                <asp:CompareValidator ID="CompareValidatorPassword" runat="server" 
                ErrorMessage="Password and Confirm Password must match"
                ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword"
                Operator="Equal" Type="String" ForeColor="Red" Text="*">
                </asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnSubmit" runat="server" Text="Save" 
                    onclick="btnSubmit_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                ForeColor="Red" HeaderText="Page Errors" ShowMessageBox="True"
                ShowSummary="true" DisplayMode="List"
                />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblStatus" runat="server" Font-Bold="true"></asp:Label>
            </td>
        </tr>
    </table>

            <!-- #endregion -->
        </div>
    </form>
</body>
</html>
