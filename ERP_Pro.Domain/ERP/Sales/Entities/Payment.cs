namespace ERP_Pro.Domain.Payments.Entities
{
    public class Payment : AggregateRoot<Guid>
    {
        public Guid CustomerSupplierId { get; set; }
        public PaymentType Type { get; set; }
        public decimal Amount { get; set; }
        public DateTime PaymentDate { get; set; }
        public Guid? BankAccountId { get; set; }
        public string Notes { get; set; }
    }
}