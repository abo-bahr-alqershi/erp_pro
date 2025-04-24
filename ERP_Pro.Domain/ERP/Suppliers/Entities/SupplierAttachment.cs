using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Suppliers.Entities
{
    public class SupplierAttachment : Entity<int>
    {
        public int SupplierId { get; set; }
        public string FileName { get; set; }
        public string FileUrl { get; set; }
    }
}