using System;
using System.Collections.Generic;
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
            MachineGrid.Visible = (MachineGrid.Visible == false);
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void MachineGrid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SubmitButtonClick(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["MachineName"].DefaultValue =
                ((TextBox)MachineGrid.FooterRow.FindControl("MachineNameEntryTextBox")).Text;
            SqlDataSource1.InsertParameters["MachineIP"].DefaultValue =
                ((TextBox)MachineGrid.FooterRow.FindControl("MachineIPEntryTextBox")).Text;
            SqlDataSource1.InsertParameters["MachineOSID"].DefaultValue =
                ((DropDownList)MachineGrid.FooterRow.FindControl("OSEntryDropDownList")).SelectedValue;
            SqlDataSource1.InsertParameters["MachineTypeID"].DefaultValue =
                ((DropDownList)MachineGrid.FooterRow.FindControl("MachineTypeEntryDropDown")).SelectedValue;
            SqlDataSource1.InsertParameters["Virtual"].DefaultValue =
                ((CheckBox)MachineGrid.FooterRow.FindControl("VirtualEntryCheckBox")).Checked.ToString();
            SqlDataSource1.InsertParameters["MachineHostID"].DefaultValue =
                ((DropDownList)MachineGrid.FooterRow.FindControl("HostEntryDropDown")).SelectedValue;
            SqlDataSource1.Insert();
        }
    }
}