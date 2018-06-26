<%@ Page Title="" Language="C#" MasterPageFile="~/retail.master" AutoEventWireup="true" CodeFile="view_booking_details.aspx.cs" Inherits="view_booking_details" %>

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
            width: 120px;
            height: 57px;
        }
        .style4
        {
            width: 142px;
            height: 57px;
        }
        .style5
        {
            height: 57px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style2" colspan="3">
            &nbsp;</td>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" colspan="6">
    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                    Height="16px" Width="784px" onitemcommand="DataGrid1_ItemCommand">
        <Columns>
            <asp:BoundColumn HeaderText="Booking id" DataField="Booking_Id"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="User Id" DataField="User_Id"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="item Id" DataField="Item_Id"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Item Count" DataField="Item_Count"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Price" DataField="Price"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Place of Delivery" DataField="Place_of_Delivery"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Date Of Booking" DataField="Date"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Date of Delivery" DataField="Date_of_Delivery"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Status" DataField="Status"></asp:BoundColumn>
            <asp:ButtonColumn CommandName="up" Text="Update Status"></asp:ButtonColumn>
            <asp:ButtonColumn CommandName="add" Text="Add delivery Date"></asp:ButtonColumn>
        </Columns>
    </asp:DataGrid>
        </td>
    </tr>
    <tr>
        <td class="style2" colspan="6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            <asp:Label ID="Label1" runat="server" Text="Specify Status"></asp:Label>
        </td>
        <td class="style3" colspan="4">
            <asp:TextBox ID="TextBox1" runat="server" Height="39px" Width="177px"></asp:TextBox>
        &nbsp;<asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Specify Status" 
                Visible="False"></asp:Label>
        </td>
        <td class="style5">
            <asp:Button ID="Button1" runat="server" Height="52px" onclick="Button1_Click" 
                style="margin-left: 0px" Text="Done" Width="114px" />
        </td>
    </tr>
    <tr>
        <td class="style2" colspan="2">
            <asp:Label ID="Label2" runat="server" Text="Date of Delivery"></asp:Label>
        </td>
        <td class="style2" colspan="2">
            <asp:TextBox ID="TextBox2" runat="server" Height="42px" Width="175px"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" ForeColor="Red" 
                Text="Specify Date Of Delivery" Visible="False"></asp:Label>
        </td>
        <td class="style2" colspan="2">
            <asp:Button ID="Button2" runat="server" Height="48px" onclick="Button2_Click" 
                Text="Done" Width="114px" />
        </td>
    </tr>
</table>
    <br />
</asp:Content>

