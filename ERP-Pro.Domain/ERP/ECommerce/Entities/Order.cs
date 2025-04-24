using ERP_Pro.Domain.Common.Entities;
using System.Collections.Generic;

namespace ERP_Pro.Domain.ECommerce.Entities
{
    public class Order : AggregateRoot<int>
    {
        public int StoreId { get; set; }
        public int CustomerId { get; set; }
        public string OrderNumber { get; set; }
        public ECommerceOrderStatus Status { get; set; }
        public decimal TotalAmount { get; set; }
        public decimal ShippingCost { get; set; }
        public string ShippingAddress { get; set; }
        public string PaymentMethod { get; set; }
        public ICollection<OrderLine> Lines { get; set; }
    }
}