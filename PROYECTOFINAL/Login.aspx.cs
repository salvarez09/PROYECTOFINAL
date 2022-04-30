using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace PROYECTOFINAL
{
    public partial class Login : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Bregistrarse_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void bingresar_Click1(object sender, EventArgs e)
        {

            if (IsValid)
            {
                Clsusuario.Setcorreo(tusuario.Text);
                Clsusuario.Setclave(tclave.Text);

                String s = System.Configuration.ConfigurationManager.ConnectionStrings["PROYECTOFINALConnectionString"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand comando = new SqlCommand("select correo, clave from transaccion where correo = '" + Clsusuario.Getcorreo() + "' and clave = '" + Clsusuario.Getclave() + "'", conexion);
                SqlDataReader registro = comando.ExecuteReader();
                if (registro.Read())
                {
                    Response.Redirect("Inicio.aspx");
                }
                else
                {

                    mensaje.Text = "usuario o contrasena incorrecto";
                }

                conexion.Close();
            }
            

        }

    
    }


}