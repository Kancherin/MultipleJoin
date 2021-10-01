using Microsoft.EntityFrameworkCore;
using MultipleJoin.Web.Data;
using MultipleJoin.Web.Data.Entities;
using MultipleJoin.Web.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MultipleJoin.Web.Helpers
{
    public class ProductosHelper : IProductosHelper
    {
        private readonly DataContext _dataContext;

        public ProductosHelper(DataContext dataContext)
        {
            _dataContext = dataContext;
        }

        public async Task<List<ProductoViewModel>> GetProductosLinq1Async()
        {
            return await
                    (from p in _dataContext.Productos
                     join m in _dataContext.Marcas on p.IdMarca equals m.Id
                     join pd in _dataContext.ProductosDetalles on p.Id equals pd.IdProducto
                     select new ProductoViewModel()
                     {
                         Id = p.Id,
                         Nombre = p.Nombre,
                         Precio = p.Precio,
                         Marca = m.Nombre,
                         Detalle = pd.Detalle
                     }).ToListAsync();
        }
    }
}
