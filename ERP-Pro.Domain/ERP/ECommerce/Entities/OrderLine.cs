using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.ECommerce.Entities
{
    public class OrderLine : Entity<int>
    {
        public int OrderId { get; set; }
        public int ECommerceProductId { get; set; }
        public decimal Quantity { get; set; }
        public decimal UnitPrice { get; set; }
        public decimal Total { get; set; }
    }
}