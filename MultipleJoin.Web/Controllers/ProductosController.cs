using Microsoft.AspNetCore.Mvc;
using MultipleJoin.Web.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MultipleJoin.Web.Controllers
{
    public class ProductosController : Controller
    {
        private readonly IProductosHelper _productosHelper;

        public ProductosController(IProductosHelper productosHelper)
        {
            _productosHelper = productosHelper;
        }

        public async Task<IActionResult> Index()
        {
            return View(await _productosHelper.GetProductosLinq1Async());
        }
    }
}
