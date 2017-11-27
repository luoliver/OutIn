using DataBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class controlEmpleado:Respuesta
    {
        OutInDBDataContext data = new OutInDBDataContext();

        public bool insertarEmpleado(string nacimiento,string nombre, string tipoID, string direccion, string cargo, string contacto, string fecha_entrada, string estado)
        {
            try
            {
                data.insertarEmpleado(Convert.ToDateTime(nacimiento), nombre, tipoID, direccion, cargo, contacto, Convert.ToDateTime(fecha_entrada), estado);
                Codigo = "OK";
                Rta = "Se ingreso el empleado correctamente";
                return true;
            }
            catch (Exception ex)
            {
                Codigo = "Error";
                Rta = ex.Message;
                return false;
            }

        }
    }
}
