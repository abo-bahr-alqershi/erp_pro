using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Customers.Entities
{
    public class CustomerAttachment : Entity<int>
    {
        public int CustomerId { get; set; }
        public string FileName { get; set; }
        public string FileUrl { get; set; }
    }
}