using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Journals.Entities
{
    public class JournalDetail : Entity<int>
    {
        public int JournalEntryId { get; set; }
        public JournalEntry JournalEntry { get; set; }
        public int AccountId { get; set; }
        public string AccountName { get; set; }
        public decimal Debit { get; set; }
        public decimal Credit { get; set; }
        public string Currency { get; set; }
        public decimal? ExchangeRate { get; set; }
        public int? CostCenterId { get; set; }
        public int? ProjectId { get; set; }
        public string Description { get; set; }
        public string Reference { get; set; }
    }
}