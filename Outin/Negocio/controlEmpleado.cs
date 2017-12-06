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

        public List<listarEmpleadoResult> listarEmpleados()
        {
            try
            {
                List<listarEmpleadoResult> objLista = data.listarEmpleado().ToList();
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
        public bool insertarEmpleado(string identificacion,DateTime nacimiento,string nombre,string contrasena, string tipoID, string direccion, string cargo, string contacto, DateTime fecha_entrada, string estado)
        {
            try
            {
                data.insertarEmpleado(identificacion,nacimiento, nombre,contrasena, tipoID, direccion, cargo, contacto, fecha_entrada, estado);
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
        public validarUsuarioResult validarEmpleado(string usuario, string contrasena)
        {
            try
            {
                validarUsuarioResult emp = data.validarUsuario(usuario, contrasena).FirstOrDefault();
                Codigo = "OK";
                Rta = "Se ingreso el empleado correctamente";
                return emp;
            }
            catch (Exception ex)
            {
                Codigo = "Error";
                Rta = ex.Message;
                return null;
            }
        }
    }
}
