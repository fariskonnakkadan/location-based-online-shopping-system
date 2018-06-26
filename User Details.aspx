<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="User Details.aspx.cs" Inherits="User_Details" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundColumn HeaderText="User Id" DataField="User_Id"></asp:BoundColumn>
            <asp:BoundColumn DataField="Username" HeaderText="Username"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Address" DataField="Address"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Home Number" DataField="Home_Number"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Mobile" DataField="Mobile"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Email" DataField="Email"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Pincode" DataField="Pincode"></asp:BoundColumn>
            <asp:BoundColumn DataField="District" HeaderText="District"></asp:BoundColumn>
        </Columns>
    </asp:DataGrid>
</asp:Content>

