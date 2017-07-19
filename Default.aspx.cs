using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MachineUpdateFrontEnd
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = 151728A\\SQLEXPRESS; Initial Catalog = MachineUpdateDataBase; Integrated Security = True; Connect Timeout = 60; Encrypt=False;TrustServerCertificate=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}