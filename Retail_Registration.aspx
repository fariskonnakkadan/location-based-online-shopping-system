<%@ Page Title="" Language="C#" MasterPageFile="~/publik.master" AutoEventWireup="true" CodeFile="Retail_Registration.aspx.cs" Inherits="_Default" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style3
        {
            width: 193px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table class="style1">
            <tr>
                <td class="style3" style="width: 134px">
                    Shop Id</td>
                <td style="width: 239px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="228px" height="22px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    &nbsp;</td>
                <td style="width: 239px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    Shop Name</td>
                <td style="width: 239px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="228px" height="22px"></asp:TextBox>
                </td>
                <td style="margin-left: 80px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter Shop Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    &nbsp;</td>
                <td style="width: 239px">
                    &nbsp;</td>
                <td style="margin-left: 80px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    Liscense</td>
                <td style="width: 239px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="228px" height="22px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter Liscense" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    &nbsp;</td>
                <td style="width: 239px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    Owner Name</td>
                <td style="width: 239px">
                    <asp:TextBox ID="TextBox4" runat="server" Width="228px" height="22px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter Owner Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    &nbsp;</td>
                <td style="width: 239px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    Phone Number</td>
                <td style="width: 239px">
                    <asp:TextBox ID="TextBox5" runat="server" Width="228px" height="22px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Enter Phone Number" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="10 digit mobile number" 
                        ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    &nbsp;</td>
                <td style="width: 239px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    Email</td>
                <td style="width: 239px">
                    <asp:TextBox ID="TextBox6" runat="server" Width="228px" height="22px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Invalid Email" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    &nbsp;</td>
                <td style="width: 239px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    Place</td>
                <td style="width: 239px">
                    <asp:TextBox ID="TextBox7" runat="server" Width="228px" height="22px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="Enter Place" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    &nbsp;</td>
                <td style="width: 239px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    Latitude</td>
                <td style="width: 239px">
                    <asp:TextBox ID="TextBox8" runat="server" Width="228px" height="22px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="Enter Latitude" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    &nbsp;</td>
                <td style="width: 239px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    Longitude</td>
                <td style="width: 239px">
                    <asp:TextBox ID="TextBox9" runat="server" Width="228px" height="22px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox9" ErrorMessage="Enter Longitude" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    &nbsp;</td>
                <td style="width: 239px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    Password</td>
                <td style="width: 239px">
                    <asp:TextBox ID="TextBox10" runat="server" Width="228px" TextMode="Password" 
                        height="22px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox10" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    &nbsp;</td>
                <td style="width: 239px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    Account Number</td>
                <td style="width: 239px">
                    <asp:TextBox ID="TextBox11" runat="server" height="22px" width="228px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TextBox11" ErrorMessage="Enter Account Number" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    &nbsp;</td>
                <td style="width: 239px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    Security Key</td>
                <td style="width: 239px">
                    <asp:TextBox ID="TextBox12" runat="server" height="22px" width="228px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="TextBox12" ErrorMessage="Enter Security key" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" style="width: 134px">
                    &nbsp;</td>
                <td style="width: 239px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" colspan="3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="SAVE" OnClick="Button1_Click" 
                        Width="136px" />
                </td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>

