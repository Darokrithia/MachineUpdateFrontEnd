﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="EditMachines.aspx.cs" Inherits="MachineUpdateFrontEnd.EditMachines" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="body" runat="server">
    <asp:Button ID ="MachineButton" Text="Machines" OnClick="ShowMachines" runat ="server"/>
    <asp:GridView ID ="MachineGrid" Visible="false" CssClass = "table" runat="server" ShowHeaderWhenEmpty="true" AllowSorting="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MachineID" DataSourceID="SqlDataSource1" ShowFooter="True" >
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:TemplateField HeaderText="MachineID" InsertVisible="False" SortExpression="MachineID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("MachineID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("MachineID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MachineName" SortExpression="MachineName">
                <EditItemTemplate>
                    <asp:TextBox ID="MachineNameTextBox" runat="server" Text='<%# Bind("MachineName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("MachineName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MachineIP" SortExpression="MachineIP">
                <EditItemTemplate>
                    <asp:TextBox ID="MachineIPTextBox" runat="server" Text='<%# Bind("MachineIP") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("MachineIP") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MachineOSID" SortExpression="MachineOSID">
                <EditItemTemplate>
                    <asp:DropDownList ID = "OSDropDownList" runat="server" SelectedValue = '<%# Bind("MachineOSID") %>'>
                        <asp:ListItem>Select OS</asp:ListItem>
                        <asp:ListItem>Mac</asp:ListItem>
                        <asp:ListItem>Windows</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("MachineOSID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MachineTypeID" SortExpression="MachineTypeID">
                <EditItemTemplate>
                    <asp:DropDownList ID="MachineTypeDropDown" runat="server" SelectedValue='<%# Bind("MachineTypeID") %>'>
                        <asp:ListItem>Select Type of Machine</asp:ListItem>
                        <asp:ListItem>PC</asp:ListItem>
                        <asp:ListItem>Laptop</asp:ListItem>
                        <asp:ListItem>Virtual</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("MachineTypeID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Virtual" SortExpression="Virtual">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Virtual") %>' />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Virtual") %>' Enabled="false" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MachineHostID" SortExpression="MachineHostID">
                <EditItemTemplate>
                    <asp:DropDownList ID="HostDropDown" runat="server" SelectedValue='<%# Bind("MachineHostID") %>'>
                        <asp:ListItem>Select Item</asp:ListItem>
                        <asp:ListItem>This</asp:ListItem>
                        <asp:ListItem>That</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("MachineHostID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
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
