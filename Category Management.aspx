<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Category Management.aspx.cs" Inherits="Add_catogory" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
    }
    .style3
    {
        width: 360px;
    }
    .style4
    {
        width: 360px;
        height: 29px;
    }
    .style5
    {
        height: 29px;
    }
    .style6
    {
        text-align: center;
    }
        .style7
        {
            width: 267px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
    <br />
    <asp:View ID="View1" runat="server">
        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
            onitemcommand="DataGrid1_ItemCommand" 
            onselectedindexchanged="DataGrid1_SelectedIndexChanged">
            <Columns>
                <asp:BoundColumn HeaderText="Category Id" DataField="Category_Id"></asp:BoundColumn>
                <asp:BoundColumn HeaderText="Category Name" DataField="Cat_name"></asp:BoundColumn>
                <asp:BoundColumn HeaderText="Description" DataField="Description"></asp:BoundColumn>
                <asp:ButtonColumn CommandName="Edit" Text="Edit"></asp:ButtonColumn>
                <asp:ButtonColumn CommandName="Delete" Text="Delete"></asp:ButtonColumn>
            </Columns>
        </asp:DataGrid>
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Add new" Height="30px" Width="94px" />
        <br />
        <br />
    </asp:View>
    <br />
    <br />
    <br />
    <br />
    <asp:View ID="View2" runat="server">
        <table class="style2">
            <tr>
                <td class="style4" style="width: 155px">
                    Category ID</td>
                <td class="style5" colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server" Width="221px" Enabled="False" 
                        height="36px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4" style="width: 155px">
                    &nbsp;</td>
                <td class="style5" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="width: 155px">
                    Category Name</td>
                <td class="style7">
                    <asp:TextBox ID="TextBox2" runat="server" Width="219px" Height="36px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Specify Category Name" ControlToValidate="TextBox2" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" style="width: 155px">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="width: 155px">
                    Description</td>
                <td class="style7">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="221px" 
                        height="36px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Enter Description" ControlToValidate="TextBox3" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" style="width: 155px">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6" colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                        Height="47px" Width="160px" />
                </td>
            </tr>
        </table>
        <br />
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
</asp:MultiView>
</asp:Content>

