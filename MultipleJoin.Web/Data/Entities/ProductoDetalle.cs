using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MultipleJoin.Web.Data.Entities
{
    public class ProductoDetalle
    {
        public int Id { get; set; }
        public int IdProducto { get; set; }
        public string Detalle { get; set; }
    }
}
