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
    }
}
