using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3_GRUPO_2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ddlLocalidades.Items.Add(new ListItem("seleccione una localidad", "0"));
            }
        }

        protected void btnGuardarLocalidad_Click(object sender, EventArgs e)
        {
            ddlLocalidades.Items.Add(new ListItem(txtLocalidad.Text, txtLocalidad.Text));
            txtLocalidad.Text = string.Empty;
        }
    }
}