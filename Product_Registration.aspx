<%@ Page Title="" Language="C#" MasterPageFile="~/retail.master" AutoEventWireup="true" CodeFile="Product_Registration.aspx.cs" Inherits="Product_Registration" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style5
        {
            width: 362px;
        }
        .style6
        {
            width: 236px;
        }
        .style7
        {
            width: 236px;
            height: 26px;
        }
        .style8
        {
            height: 26px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                onitemcommand="DataGrid1_ItemCommand">
                <Columns>
                    <asp:BoundColumn DataField="Product_Id" HeaderText="Product Id">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="Product_Name" HeaderText="Product Name">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="Item_Name" HeaderText="Item Name"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Name" HeaderText="Brand"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Cat_name" HeaderText="Category"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Price" HeaderText="Price"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Quantity" HeaderText="Quantity"></asp:BoundColumn>
                    <asp:ButtonColumn CommandName="Edit" Text="Edit"></asp:ButtonColumn>
                    <asp:ButtonColumn CommandName="Delete" Text="Delete"></asp:ButtonColumn>
                </Columns>
            </asp:DataGrid>
            <br />
            <asp:Button ID="Button1" runat="server" Height="36px" onclick="Button1_Click" 
                Text="Add New Product" Width="132px" />
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table class="style2">
                <tr>
                    <td class="style6" style="width: 144px">
                        Product Id</td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox1" runat="server" Height="41px" width="159px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style6" style="width: 144px">
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7" style="width: 144px">
                        Product Name</td>
                    <td colspan="2" class="style8">
                        <asp:TextBox ID="TextBox2" runat="server" Height="30px" width="159px"></asp:TextBox>
                    </td>
                    <td class="style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="Enter Procuct Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7" style="width: 144px">
                        &nbsp;</td>
                    <td class="style8" colspan="2">
                        &nbsp;</td>
                    <td class="style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style6" style="width: 144px">
                        Category Name</td>
                    <td colspan="2">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="159px" 
                            AutoPostBack="True" 
                            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" ForeColor="Red" 
                            Text="Select Category Name" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style6" style="width: 144px">
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7" style="width: 144px">
                        Brand Name</td>
                    <td colspan="2" class="style8">
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="159px" 
                            AutoPostBack="True" 
                            onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="style8">
                        <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Select Brand" 
                            Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7" style="width: 144px">
                        &nbsp;</td>
                    <td class="style8" colspan="2">
                        &nbsp;</td>
                    <td class="style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style6" style="width: 144px">
                        Item Name</td>
                    <td colspan="2">
                        <asp:DropDownList ID="DropDownList3" runat="server" Height="26px" Width="159px" 
                            onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="Select Item" 
                            Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style6" style="width: 144px">
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style6" style="width: 144px">
                        Price</td>
                    <td class="style5">
                        <asp:TextBox ID="TextBox3" runat="server" width="159px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="Enter Price" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style6" style="width: 144px">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style6" style="width: 144px">
                        Quantity</td>
                    <td class="style5" colspan="2">
                        <asp:TextBox ID="TextBox4" runat="server" width="159px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="Enter Quantity" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style6" style="width: 144px">
                        Image</td>
                    <td class="style5" colspan="2">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        &nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Upload" 
                            Width="83px" />
                    </td>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="134px" Width="118px" />
                    </td>
                </tr>
                <tr>
                    <td class="style6" style="width: 144px">
                        &nbsp;</td>
                    <td colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style6" style="width: 144px">
                        &nbsp;</td>
                    <td colspan="3">
                        <asp:Button ID="Button3" runat="server" Height="34px" onclick="Button3_Click" 
                            Text="Save" Width="116px" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <br />
    </asp:MultiView>
</asp:Content>

