namespace ERP_Pro.Domain.Taxes.Entities
{
    public class TaxAssignment : AggregateRoot<Guid>
    {
        public Guid TaxId { get; set; }
        public string EntityType { get; set; } // (Invoice, LineItem, Product...)
        public Guid EntityId { get; set; }
        public decimal AppliedRate { get; set; }
        public decimal Amount { get; set; }
    }
}