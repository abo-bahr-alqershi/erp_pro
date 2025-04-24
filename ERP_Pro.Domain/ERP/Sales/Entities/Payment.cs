using ERP_Pro.Domain.Banking.Entities;

namespace ERP_Pro.Domain.Sales.Entities
{
    public class Payment : AggregateRoot<Guid>
    {
        public Guid CustomerSupplierId { get; set; }
        public PaymentType Type { get; set; }
        public int? BankAccountId { get; set; }
        public BankAccount BankAccount { get; set; }
        public decimal Amount { get; set; }
        public DateTime PaymentDate { get; set; }
        public string Notes { get; set; }
    }
}