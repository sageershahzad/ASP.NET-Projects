<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ApplyAccountForm.aspx.cs" Inherits="ApplyAccount.Account.ApplyAccountForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="font-family: Arial">
         <fieldset style="width: 350px">
         <legend>Apply Account</legend>
              <table style="Width: 600px; margin-top: 40px;">
            <tr>
                <td>
                    <b>Subject</b>
                </td>
                <td>
                    :<asp:TextBox ID="txtSubject" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator 
                        ID="txtSubjectRequiredFieldValidator" 
                        runat="server"      
                       ErrorMessage="Subject is required"
                       ForeColor="Red"
                       Text="*"
                       ControlToValidate="ContactNameTextBox">
                   
                        </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr><td>
                <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
            </td></tr>
            <tr>
                <td>
                    <b>Contact Name</b>
                </td>
                <td>
                    :<asp:TextBox ID="ContactNameTextBox" runat="server" Width="200px">
                     </asp:TextBox>
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator1"
                        runat="server" 
                        ErrorMessage="Contact name is required"
                        ForeColor="Red" 
                        Text="*"
                        ControlToValidate="ContactNameTextBox">
                    </asp:RequiredFieldValidator>
                    
                </td>
            </tr>
                <tr>
                    <td>
                        <b>Contact Tel No</b>
                    </td>

                    <td>
                        :<asp:TextBox ID="ContactTelTextBox" runat="server" Width="200px">
                         </asp:TextBox>
                        
                        <asp:RequiredFieldValidator 
                            ID="ContactTelCompareValidator"
                            runat="server"
                            ErrorMessage="Contact Tel Needed" 
                            ControlToValidate="ContactTelTextBox"
                            Operator="DataTypeCheck" 
                            Type="Integer" 
                            Text="*"
                            ForeColor="Red" 
                            SetFocusOnError="True">
                            
                        </asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                    <tr>
                       <td>
                            <b>Company Name</b>
                        </td>

                        <td>
                            :<asp:TextBox ID="CompanyNameTextBox" runat="server" Width="200px">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator 
                                ID="CompanyNameRequiredFieldValidator" 
                                runat="server" 
                                ErrorMessage="Company name required" 
                                ForeColor="Red" 
                                Text="*"
                                ControlToValidate="CompanyNameTextBox">
                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                        <tr>
                            <td>
                                <b>Company type</b>
                            </td>

                            <td>
                                :<asp:DropDownList ID="CompanyTypeDropDownList" runat="server" Width="200px">
                                    <asp:ListItem Text="Select Company type" Value="-1"></asp:ListItem>
                                    <asp:ListItem Text="Sole Trader" Value="Sole Trader"></asp:ListItem>
                                    <asp:ListItem Text="Partnership" Value="Partnership"></asp:ListItem>
                                    <asp:ListItem Text="Limited Company" Value="Limited Company"></asp:ListItem>
                                    </asp:DropDownList>
                                <asp:RequiredFieldValidator 
                                    ID="CompanyTypeDropDownListRequiredFieldValidator" 
                                    runat="server" 
                                    ErrorMessage="Company type is required" 
                                    InitialValue="-1" 
                                    ForeColor="Red" 
                                    Text="*"
                                    ControlToValidate="CompanyTypeDropDownList">
                                </asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Address</b>
                                </td>

                                <td>
                                    :<asp:TextBox ID="AddressTextBox" runat="server" Height="45px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator 
                                        ID="AddressTextBoxRequiredFieldValidator" 
                                        runat="server" 
                                        Text="*"
                                        ErrorMessage="Address is required" 
                                        ForeColor="Red" 
                                        ControlToValidate="AddressTextBox">
                                    </asp:RequiredFieldValidator>
                                    </td>

                            </tr>
                                <tr>
                                    <td>
                                        <b>Terms & Conditions</b>
                                    </td>

                                    <td>
                                        <asp:CheckBox ID="TCCheckBox" runat="server" />
                                       
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td>
                                       <b>Email</b>

                                    </td>
                                    <td>
                                        :<asp:TextBox ID="EmailTextBox" runat="server" Width="200px"></asp:TextBox>
                                    
                                        <asp:RegularExpressionValidator 
                                            ID="EmailTextBoxRegularExpressionValidator" 
                                            runat="server" 
                                            ErrorMessage="Invalid Email" 
                                            ControlToValidate="EmailTextBox" 
                                            Text="*"
                                            ForeColor="Red"
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                            
                                        </asp:RegularExpressionValidator>
                                    
                                    </td>
                                   
                                 </tr>
                  <tr>
                      <td colspan="3">
                          <asp:ValidationSummary 
                              HeaderText="Please fix the following errors" 
                              ForeColor="Red"
                              ID="ApplyAccountValidationSummary" 
                              runat="server" />
                      </td>
                  </tr>
                  <tr>
                      <td colspan="3">
                          <asp:Label 
                              ID="lblApplyAccountMessage" 
                              runat="server" 
                              Font-Bold="true">
                          </asp:Label>
                      </td>
                  </tr>
            
            <tr>
                <td>
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />

                </td>
                                       
            </tr>
           
            </table>
       
        </fieldset>
        </div>
  

</asp:Content>
