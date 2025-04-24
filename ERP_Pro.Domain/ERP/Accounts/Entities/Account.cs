using ERP_Pro.Domain.Common.Entities;
using ERP_Pro.Domain.Accounts.Enums;
using ERP_Pro.Domain.Accounts.ValueObjects;
using System.Collections.Generic;

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
        public ICollection<AccountNote> Notes { get; set; }
    }
}