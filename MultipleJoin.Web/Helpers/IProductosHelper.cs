using MultipleJoin.Web.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace MultipleJoin.Web.Helpers
{
    public interface IProductosHelper
    {
        Task<List<ProductoViewModel>> GetProductosLinq1Async();
    }
}