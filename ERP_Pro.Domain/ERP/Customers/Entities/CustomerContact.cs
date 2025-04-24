using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Customers.Entities
{
    public class CustomerContact : Entity<int>
    {
        public int CustomerId { get; set; }
        public Customer Customer { get; set; }
        public string ContactName { get; set; }
        public string Position { get; set; }
        public string Phone { get; set; }
        public string Mobile { get; set; }
        public string Email { get; set; }
    }
}