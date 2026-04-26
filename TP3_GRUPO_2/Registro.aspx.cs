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
        void limpiarCampos()
        {
            txtusuario.Text = string.Empty;
            txtCorreoElectronico.Text = string.Empty;
            txtLocalidad.Text = string.Empty;
            txtcp.Text = string.Empty;
            ddlLocalidades.SelectedIndex = 0;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ddlLocalidades.Items.Add(new ListItem("seleccione una localidad", "0"));
            }
        }

        protected void btnGuardarLocalidad_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                ddlLocalidades.Items.Add(new ListItem(txtLocalidad.Text, txtLocalidad.Text));
                txtLocalidad.Text = string.Empty;
            }
        }

        protected void CvTxtLocalidades_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string nuevaLoc = args.Value.Trim().ToLower();
            bool existe = false;

            foreach (ListItem item in ddlLocalidades.Items)
            {
                if (item.Text.Trim().ToLower() == nuevaLoc)
                {
                    existe = true;
                    break;
                }
            }
            args.IsValid = !existe;
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string nombreUsuario = txtusuario.Text.ToUpper()[0] + txtusuario.Text.Substring(1);
            lblMensaje.Text = "Bienvenido/a" + " " + nombreUsuario;
            limpiarCampos();

        }

        protected void btInicio_Click(object sender, EventArgs e)
        {
            Server.Transfer("Inicio.aspx");
        }
    }
}