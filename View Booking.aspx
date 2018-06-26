<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="View Booking.aspx.cs" Inherits="View_Booking" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            height: 33px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" style="height: 247px; width: 695px">
        <tr>
            <td class="style3">
                SHOP ID</td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" Width="141px">
                </asp:DropDownList>
            </td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" 
                    Width="128px" />
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                    Height="16px" Width="469px">
        <Columns>
            <asp:BoundColumn HeaderText="Booking id" DataField="Booking_Id"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="User Id" DataField="User_Id"></asp:BoundColumn>
            <asp:BoundColumn DataField="Shop_Id" HeaderText="Shop Id"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="item Id" DataField="Item_Id"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Item Count" DataField="Item_Count"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Price" DataField="Price"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Place of Delivery" DataField="Place_of_Delivery"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Date Of Booking" DataField="Date"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Date of Delivery" DataField="Date_of_Delivery"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Status" DataField="Status"></asp:BoundColumn>
        </Columns>
    </asp:DataGrid>
            </td>
        </tr>
    </table>
</asp:Content>

