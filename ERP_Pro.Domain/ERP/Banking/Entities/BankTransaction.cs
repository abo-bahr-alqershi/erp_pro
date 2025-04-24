using ERP_Pro.Domain.Common.Entities;
using System;

namespace ERP_Pro.Domain.Banking.Entities
{
    public class BankTransaction : Entity<int>
    {
        public int BankAccountId { get; set; }
        public DateTime TransactionDate { get; set; }
        public BankTransactionType TransactionType { get; set; }
        public decimal Amount { get; set; }
        public string Reference { get; set; }
        public string Description { get; set; }
        public string RelatedDocumentType { get; set; }
        public int? RelatedDocumentId { get; set; }
        public decimal? BalanceAfter { get; set; }
    }
}