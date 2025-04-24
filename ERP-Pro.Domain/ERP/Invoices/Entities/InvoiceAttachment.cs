using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Invoices.Entities
{
    public class InvoiceAttachment : Entity<int>
    {
        public int InvoiceId { get; set; }
        public string FileName { get; set; }
        public string FileUrl { get; set; }
        public string Description { get; set; }
    }
}