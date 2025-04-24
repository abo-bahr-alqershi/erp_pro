namespace ERP_Pro.Domain.Banking.Entities
{
    public class Cheque : AggregateRoot<Guid>
    {
        public int BankAccountId { get; set; }
        public BankAccount BankAccount { get; set; }
        public string ChequeNumber { get; set; }
        public DateTime IssueDate { get; set; }
        public DateTime DueDate { get; set; }
        public decimal Amount { get; set; }
        public ChequeStatus Status { get; set; }
        public string PayeeName { get; set; }
        public string Notes { get; set; }
    }
}