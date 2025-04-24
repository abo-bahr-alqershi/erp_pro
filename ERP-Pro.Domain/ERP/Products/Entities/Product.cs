using ERP_Pro.Domain.Common.Entities;
using System.Collections.Generic;

namespace ERP_Pro.Domain.Products.Entities
{
    public class Product : AggregateRoot<int>
    {
        public string ProductCode { get; set; }
        public string Barcode { get; set; }
        public string NameAr { get; set; }
        public string NameEn { get; set; }
        public int? CategoryId { get; set; }
        public ProductCategory Category { get; set; }
        public int? BrandId { get; set; }
        public string Brand { get; set; }
        public int? UnitOfMeasureId { get; set; }
        public string UnitOfMeasure { get; set; }
        public decimal UnitPrice { get; set; }
        public decimal? CostPrice { get; set; }
        public decimal? OpeningQuantity { get; set; }
        public decimal? ReorderLevel { get; set; }
        public decimal? MinStock { get; set; }
        public decimal? MaxStock { get; set; }
        public string Description { get; set; }
        public bool IsService { get; set; }
        public bool IsActive { get; set; }
        public string Note { get; set; }
        public ICollection<ProductAttachment> Attachments { get; set; }
    }
}