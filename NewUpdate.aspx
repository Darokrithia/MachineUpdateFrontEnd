<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="NewUpdate.aspx.cs" Inherits="MachineUpdateFrontEnd.NewUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True" style="margin-top: 0px" ShowHeaderWhenEmpty ="true">
        <Columns>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID ="UpdateSqlDataSource" runat ="server" ConnectionString="<%$ ConnectionStrings:MachineUpdateDataBaseConnectionString %>" SelectCommand="SELECT * FROM [MachineUpdate MQ]">

    </asp:SqlDataSource>
</asp:Content>
