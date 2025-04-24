using ERP_Pro.Domain.Common.Entities;
using ERP_Pro.Domain.Accounts.Enums;
using ERP_Pro.Domain.Accounts.ValueObjects;
using System.Collections.Generic;
using ERP_Pro.Domain.Banking.Entities;

namespace ERP_Pro.Domain.Accounts.Entities
{
    public class Account : AggregateRoot<int>
    {
        public AccountCode Code { get; set; }
        public string NameAr { get; set; }
        public string NameEn { get; set; }
        public int? ParentAccountId { get; set; }
        public Account ParentAccount { get; set; }
        public ICollection<Account> Children { get; set; }
        public int? GroupId { get; set; }
        public AccountGroup Group { get; set; }
        public AccountType Type { get; set; }
        public AccountNature Nature { get; set; }
        public int BankAccountId { get; set; }
        public BankAccount BankAccount { get; set; }
        public string Currency { get; set; }
        public decimal? OpeningBalance { get; set; }
        public OpeningBalanceType? OpeningBalanceType { get; set; }
        public System.DateTime? OpeningBalanceDate { get; set; }
        public decimal? CreditLimit { get; set; }
        public int? BranchId { get; set; }
        public string ExternalCode { get; set; }
        public bool IsLeaf { get; set; }
        public AccountStatus Status { get; set; }
        public string Description { get; set; }
        public bool IsAnalytical { get; set; }
        public AnalyticalType? AnalyticalType { get; set; } // Enum: Customer, Supplier, Bank, CashBox, Project, None
        public bool IsActive { get; set; }
        public AccountType AccountType { get; set; } // مثال: رئيسي، فرعي، رصيد افتتاحي ...
        public ICollection<AccountNote> Notes { get; set; }


    }
}