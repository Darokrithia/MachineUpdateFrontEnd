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
        DataSet input;
        DataSet output;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void pullData() {

        }

        private void pushData() {
            output = SwitchRows(input);
        }

        private DataSet SwitchRows(DataSet input)
        {
            DataSet ds = new DataSet();

            foreach (DataTable dt in input.Tables) {
                DataTable inputTable = new DataTable();
                for (int i = 0; i < dt.Rows.Count; i++) {
                    inputTable.Columns.Add(Convert.ToString(i));
                }
                DataRow r;
                for (int j = 0; j < dt.Columns.Count; j++) {
                    r = inputTable.NewRow();
                    r[0] = dt.Columns[j].ToString();
                    for (int k = 1; k < dt.Rows.Count; k++) {
                        r[k] = dt.Rows[k - 1][j];
                    }
                    inputTable.Rows.Add(r);
                }
                ds.Tables.Add(inputTable);
            }
            return ds;
        }
    }
}