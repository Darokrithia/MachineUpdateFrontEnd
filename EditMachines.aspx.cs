using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MachineUpdateFrontEnd
{
    public partial class EditMachines : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ShowMachines(object sender, EventArgs e)
        {
            OSGridView.Visible = false;
            machineGridInit();
            MachineGrid.Visible = (MachineGrid.Visible == false);
        }
        protected void ShowOS(object sender, EventArgs e)
        {
            MachineGrid.Visible = false;
            OSGridView.Visible = (OSGridView.Visible == false);
        }

        protected void SqlDataSourceOS_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
        protected void SqlDataSourceMachine_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void MachineGrid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SubmitButtonClick(object sender, EventArgs e)
        {
            SqlDataSourceMachine.InsertParameters["MachineName"].DefaultValue =
                ((TextBox)MachineGrid.FooterRow.FindControl("MachineNameEntryTextBox")).Text;
            SqlDataSourceMachine.InsertParameters["MachineIP"].DefaultValue =
                ((TextBox)MachineGrid.FooterRow.FindControl("MachineIPEntryTextBox")).Text;
            SqlDataSourceMachine.InsertParameters["MachineOSID"].DefaultValue =
                ((DropDownList)MachineGrid.FooterRow.FindControl("OSEntryDropDownList")).SelectedValue;
            SqlDataSourceMachine.InsertParameters["MachineTypeID"].DefaultValue =
                ((DropDownList)MachineGrid.FooterRow.FindControl("MachineTypeEntryDropDown")).SelectedValue;
            SqlDataSourceMachine.InsertParameters["Virtual"].DefaultValue =
                ((CheckBox)MachineGrid.FooterRow.FindControl("VirtualEntryCheckBox")).Checked.ToString();
            SqlDataSourceMachine.InsertParameters["MachineHostID"].DefaultValue =
                ((DropDownList)MachineGrid.FooterRow.FindControl("HostEntryDropDown")).SelectedValue;
            SqlDataSourceMachine.Insert();
        }

        protected void machineGridInit() {
            //DropDownList OSDropDownList = MachineGrid.Rows[2].FindControl("OSDropDownList") as DropDownList;
            //OSDropDownList.Items[0].Text = "test";
        }

        protected void MachineGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DataSourceSelectArguments argsOS = new DataSourceSelectArguments();
            DataView viewOS = (DataView)SqlDataSourceOS.Select(argsOS);
            DataTable dtOS = viewOS.ToTable();

            int index = e.NewEditIndex;
            var ddl = MachineGrid.Rows[index].FindControl("OSDropDownList") as DropDownList;

            for (int i = 0; i < dtOS.Rows.Count - 1; i++) {
                ddl.Items.Add(new ListItem(dtOS.Columns[0].ToString(), dtOS.Columns[1].ToString()));
            }
        }
    }
}