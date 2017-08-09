﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="NewUpdate.aspx.cs" Inherits="MachineUpdateFrontEnd.NewUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True" DataKeyNames="UpdateID" style="margin-top: 0px" ShowHeaderWhenEmpty ="true">
        <Columns>
            <asp:BoundField DataField="UpdateID" HeaderText="UpdateID" InsertVisible="False" ReadOnly="True" SortExpression="UpdateID" />
            <asp:BoundField DataField="MachineID" HeaderText="MachineID" SortExpression="MachineID" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID ="UpdateSqlDataSource" runat ="server" ConnectionString="<%$ ConnectionStrings:MachineUpdateDataBaseConnectionString %>" SelectCommand="SELECT * FROM [MachineUpdate MQ]">

    </asp:SqlDataSource>
</asp:Content>
