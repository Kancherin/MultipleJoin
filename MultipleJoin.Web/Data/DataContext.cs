using Microsoft.EntityFrameworkCore;
using MultipleJoin.Web.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MultipleJoin.Web.Data
{
    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions<DataContext> options) : base(options)
        {
        }

        public DbSet<Producto> Productos { get; set; }
        public DbSet<ProductoDetalle> ProductosDetalles { get; set; }
        public DbSet<Marca> Marcas { get; set; }
    }
}
