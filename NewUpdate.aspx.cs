using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MachineUpdateFrontEnd
{
    public partial class NewUpdate : System.Web.UI.Page
    {
        DataTable input;
        DataTable output;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void pullData() {

        }

        private void pushData() {
            output = SwitchRows(input);
        }

        private DataTable SwitchRows(DataTable input)
        {
            return input;
        }
    }
}