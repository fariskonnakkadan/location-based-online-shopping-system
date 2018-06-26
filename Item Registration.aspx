<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Item Registration.aspx.cs" Inherits="Item_Registration" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            height: 26px;
            text-align: left;
        }
        .style6
        {
            width: 347px;
            height: 24px;
        }
        .style7
        {
            height: 24px;
        }
        .style8
        {
            width: 347px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <br />
        <asp:View ID="View1" runat="server">
            <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                onitemcommand="DataGrid1_ItemCommand">
                <Columns>
                    <asp:BoundColumn HeaderText="Item Id" DataField="Item_Id"></asp:BoundColumn>
                    <asp:BoundColumn HeaderText="Item Name" DataField="Item_Name"></asp:BoundColumn>
                    <asp:BoundColumn HeaderText="Category" DataField="Cat_name"></asp:BoundColumn>
                    <asp:BoundColumn HeaderText="Brand" DataField="Name"></asp:BoundColumn>
                    <asp:ButtonColumn CommandName="Edit" Text="Edit"></asp:ButtonColumn>
                    <asp:ButtonColumn CommandName="Delete" Text="Delete"></asp:ButtonColumn>
                </Columns>
            </asp:DataGrid>
            <br />
            <asp:Button ID="Button1" runat="server" Text="New Item" onclick="Button1_Click" 
                Width="121px" Height="46px" />
            <br />
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table class="style2">
                <tr>
                    <td class="style8" style="width: 131px">
                        Item Id</td>
                    <td style="width: 212px">
                        <asp:TextBox ID="TextBox1" runat="server" height="37px" width="180px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style8" style="width: 131px">
                        &nbsp;</td>
                    <td style="width: 212px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style8" style="width: 131px">
                        Item Name</td>
                    <td style="width: 212px">
                        <asp:TextBox ID="TextBox3" runat="server" height="41px" width="180px"></asp:TextBox>
                        &nbsp;
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="Enter Category Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style8" style="width: 131px">
                        &nbsp;</td>
                    <td style="width: 212px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style8" style="width: 131px">Category</td>
                    <td style="width: 212px">
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="53px" Width="180px" 
                            AutoPostBack="True" 
                            onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" ForeColor="#FF5050" 
                            Text="Select Category" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style8" style="width: 131px">
                        &nbsp;</td>
                    <td style="width: 212px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style6" style="width: 131px">
                        Brand</td>
                    <td class="style7" style="width: 212px">
                        <asp:DropDownList ID="DropDownList3" runat="server" Height="22px" Width="180px">
                        </asp:DropDownList>
                    </td>
                    <td class="style7">
                        <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Select Brand" 
                            Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3" colspan="3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style3" style="width: 131px">
                        &nbsp;</td>
                    <td class="style3" colspan="2">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Save" 
                            Width="127px" Height="42px" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
        </asp:View>
        <br />
        <br />
    </asp:MultiView>
</asp:Content>

