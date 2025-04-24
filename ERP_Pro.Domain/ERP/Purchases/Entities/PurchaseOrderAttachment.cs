using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Purchases.Entities
{
    public class PurchaseOrderAttachment : Entity<int>
    {
        public int PurchaseOrderId { get; set; }
        public string FileName { get; set; }
        public string FileUrl { get; set; }
    }
}