namespace ERP_Pro.Domain.Sales.Entities
{
    public class Offer : AggregateRoot<Guid>
    {
        public string OfferName { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public bool IsActive { get; set; }
        public ICollection<OfferProduct> OfferProducts { get; set; }
    }
}