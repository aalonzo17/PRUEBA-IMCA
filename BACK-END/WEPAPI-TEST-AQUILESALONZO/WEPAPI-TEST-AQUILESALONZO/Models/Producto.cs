using System;
using System.Collections.Generic;

namespace WEPAPI_TEST_AQUILESALONZO.Models;

public partial class Producto
{
    public int? ProductoNo { get; set; }

    public string? ProductoNombre { get; set; }

    public string? Marca { get; set; }

    public decimal? Precio { get; set; }

    public int? Stock { get; set; }
}
