using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Invoices.Entities
{
    public class InvoiceLine : Entity<int>
    {
        public int InvoiceId { get; set; }
        public Invoice Invoice { get; set; }
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string UnitOfMeasure { get; set; }
        public decimal Quantity { get; set; }
        public decimal UnitPrice { get; set; }
        public decimal Discount { get; set; }
        public decimal Tax { get; set; }
        public decimal Total { get; set; }
        public string Description { get; set; }
    }
}