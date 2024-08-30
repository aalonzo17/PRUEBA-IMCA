using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace WEPAPI_TEST_AQUILESALONZO.Models;

public partial class PruebaContext : DbContext
{
    public PruebaContext()
    {
    }

    public PruebaContext(DbContextOptions<PruebaContext> options)
        : base(options)
    {
    }

    public virtual DbSet<FacturaD> FacturaDs { get; set; }

    public virtual DbSet<FacturaH> FacturaHs { get; set; }

    public virtual DbSet<Producto> Productos { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<FacturaD>(entity =>
        {
            entity
                .HasNoKey()
                .ToTable("FacturaD");

            entity.Property(e => e.Precio).HasColumnType("decimal(10, 2)");
        });

        modelBuilder.Entity<FacturaH>(entity =>
        {
            entity
                .HasNoKey()
                .ToTable("FacturaH");

            entity.Property(e => e.Estatus)
                .HasMaxLength(100)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Producto>(entity =>
        {
            entity.HasNoKey();

            entity.Property(e => e.Marca)
                .HasMaxLength(200)
                .IsUnicode(false);
            entity.Property(e => e.Precio).HasColumnType("decimal(10, 2)");
            entity.Property(e => e.ProductoNombre)
                .HasMaxLength(100)
                .IsUnicode(false);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
