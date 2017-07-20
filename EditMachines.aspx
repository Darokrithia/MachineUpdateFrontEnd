<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="EditMachines.aspx.cs" Inherits="MachineUpdateFrontEnd.EditMachines" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:Button ID ="MachineButton" Text="Machines" OnClick="ShowMachines" runat ="server"/>
    <asp:Table ID ="MachineTable" Visible="false" CssClass = "table" runat="server">
        <asp:TableRow>
            <asp:TableCell>Hi</asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>
