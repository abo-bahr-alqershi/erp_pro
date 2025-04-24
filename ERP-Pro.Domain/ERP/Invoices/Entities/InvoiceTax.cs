using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Invoices.Entities
{
    public class InvoiceTax : Entity<int>
    {
        public int InvoiceId { get; set; }
        public string TaxType { get; set; }
        public decimal TaxAmount { get; set; }
        public string Notes { get; set; }
    }
}