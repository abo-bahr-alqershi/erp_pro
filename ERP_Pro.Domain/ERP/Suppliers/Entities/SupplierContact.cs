using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Suppliers.Entities
{
    public class SupplierContact : Entity<int>
    {
        public int SupplierId { get; set; }
        public Supplier Supplier { get; set; }
        public string ContactName { get; set; }
        public string Position { get; set; }
        public string Phone { get; set; }
        public string Mobile { get; set; }
        public string Email { get; set; }
    }
}