<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Brand_Management.aspx.cs" Inherits="Brand_Management" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
    }
    .style3
    {
        width: 338px;
    }
    .style4
    {
        text-align: center;
    }
        .style5
        {
            width: 195px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
            onselectedindexchanged="DataGrid1_SelectedIndexChanged" Width="473px" 
            onitemcommand="DataGrid1_ItemCommand">
            <Columns>
                <asp:BoundColumn HeaderText="Category" DataField="Cat_name"></asp:BoundColumn>
                <asp:BoundColumn HeaderText="Brand Id" DataField="Brand_Id"></asp:BoundColumn>
                <asp:BoundColumn HeaderText="Brand Name" DataField="Name"></asp:BoundColumn>
                <asp:BoundColumn HeaderText="Description" DataField="Description"></asp:BoundColumn>
                <asp:ButtonColumn HeaderText="Edit" Text="Edit" CommandName="Edit"></asp:ButtonColumn>
                <asp:ButtonColumn HeaderText="Delete" Text="Delete" CommandName="Delete"></asp:ButtonColumn>
            </Columns>
        </asp:DataGrid>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Add New" 
            onclick="Button2_Click" Height="35px" Width="116px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:View>
    <asp:View ID="View2" runat="server">
        <table class="style2">
            <tr>
                <td class="style3" style="width: 157px">
                    Select Category</td>
                <td class="style5" style="width: 202px">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        Height="22px" Width="153px">
                    </asp:DropDownList>
                    &nbsp;&nbsp;
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Select Category" 
                        Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" style="width: 157px">
                    &nbsp;</td>
                <td class="style5" style="width: 202px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="width: 157px">
                    Brand Id</td>
                <td class="style5" style="width: 202px">
                    <asp:TextBox ID="TextBox1" runat="server" height="22px" width="153px"></asp:TextBox>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="width: 157px">
                    &nbsp;</td>
                <td class="style5" style="width: 202px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="width: 157px; height: 25px;">
                    Brand Name</td>
                <td class="style5" style="width: 202px; height: 25px;">
                    <asp:TextBox ID="TextBox2" runat="server" height="22px" width="153px"></asp:TextBox>
                </td>
                <td style="height: 25px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Specify Brand Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" style="width: 157px; height: 25px;">
                    &nbsp;</td>
                <td class="style5" style="width: 202px; height: 25px;">
                    &nbsp;</td>
                <td style="height: 25px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="width: 157px">
                    Description</td>
                <td class="style5" style="width: 202px">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" height="36px" 
                        width="156px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter Description" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" style="width: 157px">
                    &nbsp;</td>
                <td class="style5" style="width: 202px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4" colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" ForeColor="Black" Height="37px" 
                        onclick="Button1_Click" Text="Save" Width="142px" />
                </td>
            </tr>
        </table>
    </asp:View>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:MultiView>
</asp:Content>

