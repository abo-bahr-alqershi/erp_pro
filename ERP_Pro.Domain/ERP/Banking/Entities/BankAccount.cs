using ERP_Pro.Domain.Common.Entities;
using System.Collections.Generic;

namespace ERP_Pro.Domain.Banking.Entities
{
    public class BankAccount : AggregateRoot<int>
    {
        public string BankName { get; set; }
        public string BranchName { get; set; }
        public string AccountNumber { get; set; }
        public string AccountName { get; set; }
        public string IBAN { get; set; }
        public string Currency { get; set; }
        public decimal OpeningBalance { get; set; }
        public decimal CurrentBalance { get; set; }
        public bool IsActive { get; set; }
        public string Note { get; set; }
        public ICollection<BankTransaction> Transactions { get; set; }
        public ICollection<BankAttachment> Attachments { get; set; }
        public ICollection<Cheque> Cheques { get; set; }
        
    }
}