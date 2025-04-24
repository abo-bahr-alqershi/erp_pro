namespace ERP_Pro.Domain.Sales.Entities
{
    public class OfferProduct : AggregateRoot<Guid>
    {
        public Guid OfferId { get; set; }
        public Guid ProductId { get; set; }
        public decimal DiscountPercent { get; set; }
        public decimal FixedPrice { get; set; }
    }
}