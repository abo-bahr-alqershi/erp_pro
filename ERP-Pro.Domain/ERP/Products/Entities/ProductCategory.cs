using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Products.Entities
{
    public class ProductCategory : Entity<int>
    {
        public string CategoryName { get; set; }
        public int? ParentCategoryId { get; set; }
        public ProductCategory ParentCategory { get; set; }
    }
}