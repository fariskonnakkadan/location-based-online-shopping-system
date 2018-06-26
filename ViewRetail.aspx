<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="ViewRetail.aspx.cs" Inherits="ViewRetail" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
        onselectedindexchanged="DataGrid1_SelectedIndexChanged" 
        onitemcommand="DataGrid1_ItemCommand" Height="214px" Width="620px">
        <Columns>
            <asp:BoundColumn HeaderText="Shop Id" DataField="Shop_Id"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Shop Name" DataField="Shop_Name"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Liscense" DataField="Liscense"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Owner Name" DataField="Owner_Name"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Phone Number" DataField="Phone_Number"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Email" DataField="Email"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Place" DataField="Place"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Latitude" DataField="Latitude"></asp:BoundColumn>
            <asp:BoundColumn DataField="Longitude" HeaderText="Longitude"></asp:BoundColumn>
            <asp:ButtonColumn HeaderText="Approve" Text="Approve" CommandName="App"></asp:ButtonColumn>
        </Columns>
    </asp:DataGrid>
</asp:Content>

