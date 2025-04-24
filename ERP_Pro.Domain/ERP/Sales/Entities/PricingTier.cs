namespace ERP_Pro.Domain.Sales.Entities
{
    public class PricingTier : AggregateRoot<Guid>
    {
        public Guid ProductId { get; set; }
        public string TierName { get; set; }
        public decimal Price { get; set; }
    }
}