<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="EditMachines.aspx.cs" Inherits="MachineUpdateFrontEnd.EditMachines" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:Button ID ="MachineButton" Text="Machines" OnClick="ShowMachines" runat ="server"/>
    <asp:GridView ID ="MachineGrid" Visible="False" CssClass = "table" runat="server" AllowSorting="True" AutoGenerateColumns="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MachineID" DataSourceID="SqlDataSource1" GridLines="Both" ShowFooter="True" >
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="MachineID" HeaderText="MachineID" InsertVisible="False" ReadOnly="True" SortExpression="MachineID" />
            <asp:BoundField DataField="MachineName" HeaderText="MachineName" SortExpression="MachineName" />
            <asp:BoundField DataField="MachineIP" HeaderText="MachineIP" SortExpression="MachineIP" />
            <asp:BoundField DataField="MachineOSID" HeaderText="MachineOSID" SortExpression="MachineOSID" />
            <asp:BoundField DataField="MachineTypeID" HeaderText="MachineTypeID" SortExpression="MachineTypeID" />
            <asp:CheckBoxField DataField="Virtual" HeaderText="Virtual" SortExpression="Virtual" />
            <asp:BoundField DataField="MachineHostID" HeaderText="MachineHostID" SortExpression="MachineHostID" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MachineUpdateDataBaseConnectionString %>" DeleteCommand="DELETE FROM [Machine] WHERE [MachineID] = @MachineID" InsertCommand="INSERT INTO [Machine] ([MachineName], [MachineIP], [MachineOSID], [MachineTypeID], [Virtual], [MachineHostID]) VALUES (@MachineName, @MachineIP, @MachineOSID, @MachineTypeID, @Virtual, @MachineHostID)" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [MachineID], [MachineName], [MachineIP], [MachineOSID], [MachineTypeID], [Virtual], [MachineHostID] FROM [Machine]" UpdateCommand="UPDATE [Machine] SET [MachineName] = @MachineName, [MachineIP] = @MachineIP, [MachineOSID] = @MachineOSID, [MachineTypeID] = @MachineTypeID, [Virtual] = @Virtual, [MachineHostID] = @MachineHostID WHERE [MachineID] = @MachineID">
        <DeleteParameters>
            <asp:Parameter Name="MachineID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MachineName" Type="String" />
            <asp:Parameter Name="MachineIP" Type="String" />
            <asp:Parameter Name="MachineOSID" Type="Int32" />
            <asp:Parameter Name="MachineTypeID" Type="Int32" />
            <asp:Parameter Name="Virtual" Type="Boolean" />
            <asp:Parameter Name="MachineHostID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MachineName" Type="String" />
            <asp:Parameter Name="MachineIP" Type="String" />
            <asp:Parameter Name="MachineOSID" Type="Int32" />
            <asp:Parameter Name="MachineTypeID" Type="Int32" />
            <asp:Parameter Name="Virtual" Type="Boolean" />
            <asp:Parameter Name="MachineHostID" Type="Int32" />
            <asp:Parameter Name="MachineID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
