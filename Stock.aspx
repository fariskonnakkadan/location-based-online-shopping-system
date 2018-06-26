<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Stock.aspx.cs" Inherits="Stock" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            height: 45px;
        }
        .style4
        {
            width: 293px;
        }
        .style5
        {
            width: 33%;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td class="style5" style="width: 242px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Select Shop Name</td>
            <td class="style4" style="width: 304px">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="140px">
                </asp:DropDownList>
            &nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Select Shop Name" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style5">
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" 
                    Width="94px" />
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="3">
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundColumn HeaderText="Category Name" DataField="Cat_name"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Brand Name" DataField="Name"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Item Name" DataField="Item_Name"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Product Name" DataField="Product_Name"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Stock Available" DataField="Quantity"></asp:BoundColumn>
                    </Columns>
                </asp:DataGrid>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

