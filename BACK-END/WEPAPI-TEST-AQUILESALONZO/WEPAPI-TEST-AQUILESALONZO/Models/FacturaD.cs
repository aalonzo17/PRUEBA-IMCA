using System;
using System.Collections.Generic;

namespace WEPAPI_TEST_AQUILESALONZO.Models;

public partial class FacturaD
{
    public int? FacturaNo { get; set; }

    public int? ProductoNo { get; set; }

    public int? Cantidad { get; set; }

    public decimal? Precio { get; set; }
}
