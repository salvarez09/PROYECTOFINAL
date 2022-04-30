using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PROYECTOFINAL
{
    public class Clsusuario
    {
        private static int codigo { get; set; }
        private static string nombre { get; set; }
        private static string correo { get; set; }
        private static string clave { get; set; }
        private static string tipo { get; set; }
        private static string fecha { get; set; }
        private static int monto { get; set; }

        //meetodos 

        public static string Getcorreo()
        {
            return correo;
        }

        public static void  Setcorreo(string email)
        {
            correo = email; ;
        }

        public static string Getclave()
        {
            return clave;
        }

        public static void  Setclave(string password)
        {
            clave = password; 
        }


    }

    /*
     * CODIGO INT IDENTITY(1,1) PRIMARY KEY,
	NOMBRE VARCHAR(30),
	CORREO VARCHAR(30)unique,
	CLAVE VARCHAR(30),
	TIPO NVARCHAR(20) CHECK (TIPO = 'Ingreso' or TIPO = 'Gasto'),
	DESCRIPCION VARCHAR(50),
	FECHA DATETIME,
	MONTO MONEY
     * 
     * 
     */
}