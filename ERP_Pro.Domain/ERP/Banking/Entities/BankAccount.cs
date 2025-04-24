using ERP_Pro.Domain.Accounts.Entities;
using ERP_Pro.Domain.Common.Entities;
using ERP_Pro.Domain.Sales.Entities;
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

        public int AccountId { get; set; }
        public Account Account { get; set; }

        public ICollection<BankTransaction> Transactions { get; set; }
        public ICollection<BankAttachment> Attachments { get; set; }
        public ICollection<Cheque> Cheques { get; set; }
        public int? PaymentId { get; set; }
        public Payment Paymentes { get; set; }

        
    }
}