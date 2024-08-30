using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WEPAPI_TEST_AQUILESALONZO.DTOs;
using WEPAPI_TEST_AQUILESALONZO.Models;

namespace WEPAPI_TEST_AQUILESALONZO.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ProductsController : Controller
    {
        private readonly PruebaContext context;
        public ProductsController(PruebaContext _context)
        {
            context = _context;
        }

        [HttpGet]
        public async Task<ActionResult<List<Producto>>> Get()
        {
            return await context.Productos.ToListAsync();
        }

        [HttpPost]
        public async Task Post(List<ProductDTO> products)
        {
           List<ProductDTO> data = products;
        }
    }
}
