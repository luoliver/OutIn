using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataBase;

namespace Negocio
{
    public class controlProveedor:Respuesta
    {
        OutInDBDataContext data = new OutInDBDataContext();

        public List<listProveedorResult> listarProveedores()
        {
            try
            {
                List<listProveedorResult> objLista = data.listProveedor().ToList();
                Codigo = "OK";
                Rta = "Se realizo correctamente";
                return objLista;
            }
            catch (Exception ex)
            {
                Codigo = "Error";
                Rta = ex.Message;
                return null;
            }
        }
        public bool insertarProveedor(bool estado, long contacto, string direccion, string nombre)
        {
            try
            {
                data.insertarProveedor(estado,contacto,direccion,nombre);
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
