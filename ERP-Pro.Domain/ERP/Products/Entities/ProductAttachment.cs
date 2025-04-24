using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Products.Entities
{
    public class ProductAttachment : Entity<int>
    {
        public int ProductId { get; set; }
        public string FileName { get; set; }
        public string FileUrl { get; set; }
    }
}