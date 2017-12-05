using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataBase;

namespace Negocio
{
    public class controlProductos : Respuesta
    {
        OutInDBDataContext data = new OutInDBDataContext();

        

        //public bool insertarProducto(string nombre,string marca,int stockMin, int stockMax,double peso,string estado,int categoria)
        //{
        //    try
        //    {
        //        data.insertarProducto(nombre, marca, stockMin, stockMax, peso, estado, categoria);
        //        Codigo = "OK";
        //        Rta = "Se ingreso el producto correctamente";
        //        return true;
        //    }
        //    catch (Exception ex)
        //    {
        //        Codigo = "Error";
        //        Rta = ex.Message;
        //        return false;
        //    }

        //}
    }
    
}
