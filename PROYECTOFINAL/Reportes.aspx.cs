using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROYECTOFINAL
{
    public partial class Reportes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            llenarGrid_filtro();

            gastosTotales();
            ingresosTotales();



        }

        protected void  gastosTotales()
        {
            DataTable dt = new DataTable();
            SqlConnection Conn = new SqlConnection("Data Source=LAPTOP-NS636SUN\\SQLEXPRESS01;Initial Catalog=PROYECTOFINAL;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SUMGASTO", Conn);
            cmd.CommandType = CommandType.StoredProcedure;
            //Console.WriteLine(cmd);

            tgasto.Text = cmd.ToString();
        }

        protected void ingresosTotales()
        {
            DataTable dt = new DataTable();
            SqlConnection Conn = new SqlConnection("Data Source=LAPTOP-NS636SUN\\SQLEXPRESS01;Initial Catalog=PROYECTOFINAL;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SUMINGRESO", Conn);
            cmd.CommandType = CommandType.StoredProcedure;
            //Console.WriteLine(cmd);

            tingreso.Text = cmd.ToString();
        }



        public void llenarGrid_filtro()
        {

            DataTable dt = new DataTable();
            SqlConnection Conn = new SqlConnection("Data Source=LAPTOP-NS636SUN\\SQLEXPRESS01;Initial Catalog=PROYECTOFINAL;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("TRANSACCION_FILTRO", Conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("TIPO", Dtipo2.Text);
            Conn.Open();
            try
            {
                using (Conn = PROYECTOFINAL.DBconn.obtenerConexion())
                {
                    

                    cmd.ExecuteNonQuery();
                    using (dt = new DataTable())
                    {
                      
                       SqlDataAdapter sda = new SqlDataAdapter();
                      cmd.CommandType = CommandType.StoredProcedure;
                      sda.SelectCommand = cmd;
                      sda.Fill(dt);
                      this.GridView1.DataSource = dt;
                      this.GridView1.DataBind();                     

                    }
                    
                }

                
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                throw new Exception("Exception adding account. " + ex.Message);
            }
            finally
            {
                Conn.Close();
            }
        }

        protected void bsalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
    }
}