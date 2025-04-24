using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.ECommerce.Entities
{
    public class ECommerceProduct : AggregateRoot<int>
    {
        public int StoreId { get; set; }
        public string ProductCode { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
        public bool IsActive { get; set; }
        public int Stock { get; set; }
        public string ImageUrl { get; set; }
    }
}