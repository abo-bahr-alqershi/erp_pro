using ERP_Pro.Domain.Common.Entities;
using System.Collections.Generic;

namespace ERP_Pro.Domain.ECommerce.Entities
{
    public class Store : AggregateRoot<int>
    {
        public string StoreName { get; set; }
        public string DomainUrl { get; set; }
        public string ContactEmail { get; set; }
        public string ContactPhone { get; set; }
        public string Address { get; set; }
        public bool IsActive { get; set; }
        public ICollection<ECommerceProduct> Products { get; set; }
        public ICollection<Order> Orders { get; set; }
    }
}