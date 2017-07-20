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
            MachineTable.Visible = (MachineTable.Visible == false);
        }
    }
}