<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="EditMachines.aspx.cs" Inherits="MachineUpdateFrontEnd.EditMachines"%>
<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="body" runat="server">
    <asp:Button ID ="MachineButton" Text="Machines" OnClick="ShowMachines" runat ="server"/>
    <asp:GridView ID ="MachineGrid" Autogeneratecolumns="false" Visible="false" CssClass = "table" runat="server" ShowHeaderWhenEmpty="true" AllowSorting="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MachineID" DataSourceID="SqlDataSource1" ShowFooter="True" >
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:TemplateField HeaderText="Machine ID" InsertVisible="False" SortExpression="MachineID">
                <EditItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("MachineID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("MachineID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:Button ID ="SubmitButton" ValidationGroup = "EntryVG" OnClick="SubmitButtonClick" Text="Submit" runat="server"/>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Machine Name" SortExpression="MachineName">
                <EditItemTemplate>
                    <asp:TextBox ID="MachineNameTextBox" runat="server" Text='<%# Bind("MachineName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID = "NameEditValidator" runat="server" ErrorMessage = "Error Name is a required Field"
                        ControlToValidate ="MachineNameTextBox" Text = "*" ForeColor ="Red">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("MachineName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID = "MachineNameEntryTextBox" runat = "server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID = "NameEntryValidator" ValidationGroup = "EntryVG" runat="server" ErrorMessage = "Error Name is a required Field"
                        ControlToValidate ="MachineNameEntryTextBox" Text = "*" ForeColor ="Red">
                    </asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Machine IP" SortExpression="MachineIP">
                <EditItemTemplate>
                    <asp:TextBox ID="MachineIPTextBox" runat="server" Text='<%# Bind("MachineIP") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID = "IPEditValidator" runat="server" ErrorMessage = "Error IP address is a required Field"
                        ControlToValidate ="MachineIPTextBox" Text = "*" ForeColor ="Red">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("MachineIP") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID ="MachineIPEntryTextBox" runat ="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID = "IPEntryValidator" ValidationGroup = "EntryVG" runat="server" ErrorMessage = "Error IP address is a required Field"
                        ControlToValidate ="MachineIPEntryTextBox" Text = "*" ForeColor ="Red">
                    </asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MachineOSID" SortExpression="MachineOSID">
                <EditItemTemplate>
                    <asp:DropDownList ID = "OSDropDownList" runat="server" SelectedValue = '<%# Bind("MachineOSID") %>'>
                        <asp:ListItem Text ="Select OS" Value ="0"></asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID = "OSEditValidator" runat="server" ErrorMessage = "Error OS is a required Field"
                        ControlToValidate ="OSDropDownList" Text = "*" ForeColor ="Red" InitialValue='<%# "0" %>'>
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("MachineOSID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID = "OSEntryDropDownList" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID = "OSEntryValidator" ValidationGroup = "EntryVG" runat="server" ErrorMessage = "Error OS is a required Field"
                        ControlToValidate ="OSEntryDropDownList" Text = "*" ForeColor ="Red" InitialValue='<%# "0" %>'>
                    </asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Machine Type" SortExpression="MachineTypeID">
                <EditItemTemplate>
                    <asp:DropDownList ID="MachineTypeDropDown" runat="server" SelectedValue='<%# Bind("MachineTypeID") %>'>
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID = "MachineTypeEditValidator" runat="server" ErrorMessage = "Error Hardware is a required Field"
                        ControlToValidate ="MachineTypeDropDown" Text = "*" ForeColor ="Red" InitialValue='<%# "0" %>'>
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("MachineTypeID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID="MachineTypeEntryDropDown" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID = "MachineTypeEntryValidator" ValidationGroup = "EntryVG" runat="server" ErrorMessage = "Error Hardware is a required Field"
                        ControlToValidate ="MachineTypeEntryDropDown" Text = "*" ForeColor ="Red" InitialValue='<%# "0" %>'>
                    </asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Virtual" SortExpression="Virtual">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Virtual") %>' />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("Virtual") %>' Enabled="false" />
                </ItemTemplate>
                <FooterTemplate>
                    <asp:CheckBox ID="VirtualEntryCheckBox" runat="server" Checked ="false"/>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Machine Host" SortExpression="MachineHostID">
                <EditItemTemplate>
                    <asp:DropDownList ID="HostDropDown" runat="server" SelectedValue='<%# "0" %>'>
                        <asp:ListItem Text ="Select Host">0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("MachineHostID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID="HostEntryDropDown" runat="server">
                        <asp:ListItem Text ="Select Host">0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                    </asp:DropDownList>
                </FooterTemplate>
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
    <asp:ValidationSummary ID = "EditErrprMessages" ForeColor="Red" runat="server"/>
    <asp:ValidationSummary ID = "EntryErrorMessages" ValidationGroup = "EntryVG" ForeColor="Red" runat="server"/>
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
