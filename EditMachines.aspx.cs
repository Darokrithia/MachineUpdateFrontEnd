﻿using System;
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
            TypeGridView.Visible = false;
            machineGridInit();
            MachineGrid.Visible = (MachineGrid.Visible == false);
        }
        protected void ShowOS(object sender, EventArgs e)
        {
            MachineGrid.Visible = false;
            TypeGridView.Visible = false;
            OSGridView.Visible = (OSGridView.Visible == false);
        }

        protected void ShowType(object sender, EventArgs e)
        {
            MachineGrid.Visible = false;
            OSGridView.Visible = false;
            TypeGridView.Visible = (TypeGridView.Visible == false);
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

        protected void MachineSubmitButtonClick(object sender, EventArgs e)
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

        protected void OSSubmitButtonClick(object sender, EventArgs e)
        {
            SqlDataSourceOS.InsertParameters["MachineOS"].DefaultValue =
                ((TextBox)OSGridView.FooterRow.FindControl("OSNameEntryTextBox")).Text;
            SqlDataSourceOS.Insert();
        }

        protected void TypeSubmitButtonClick(object sender, EventArgs e)
        {
            SqlDataSourceType.InsertParameters["MachineType"].DefaultValue =
                ((TextBox)TypeGridView.FooterRow.FindControl("TypeNameEntryTextBox")).Text;
            SqlDataSourceType.Insert();
        }

        protected void machineGridInit() {
            /*
            Label OSLabel = MachineGrid.Rows[2].FindControl("OSLabel") as Label;

            DataSourceSelectArguments argsOS = new DataSourceSelectArguments();
            DataView viewOS = (DataView)SqlDataSourceOS.Select(argsOS);
            DataTable dtOS = viewOS.ToTable();

            OSLabel.Text = dtOS.Columns[1].ToString();
            */
        }

        protected void MachineGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}