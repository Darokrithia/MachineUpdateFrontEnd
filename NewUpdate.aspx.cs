using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MachineUpdateFrontEnd
{
    public partial class NewUpdate : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string sqlCommand = "UPDATE MachineUpdate SET ";
            foreach (DictionaryEntry item in e.NewValues)
            {
                // You will need to take care to not update PK, FK, etc
                // You will need to handle DB restrictions
                // You will need to handle DataTypes (eg: Not set a boolean in a Date column)
                sqlCommand = sqlCommand + item.Key + " = " + item.Value + ",";
            }

            sqlCommand = sqlCommand.TrimEnd(','); // removes the last comma

            foreach (DictionaryEntry de in e.Keys)
            {
                //Assuming that you will have just only one key
                // You can get the Key in the GridView.DataKeyNames property as well
                sqlCommand = sqlCommand + " WHERE " + de.Key.ToString() + " = " + de.Value.ToString();
            }


            GridView grd = (GridView)sender;
            SqlDataSource ds = (SqlDataSource)grd.DataSourceObject;
            ds.UpdateCommand = sqlCommand; // Modify the UpdateCommand of you SqlDataSource
        }
    }
}