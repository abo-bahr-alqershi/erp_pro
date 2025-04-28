using ERP_Pro.Domain.Common.Aggregates;
using ERP_Pro.Domain.Common.ValueObjects;
using ERP_Pro.Domain.Common.Events;
using ERP_Pro.Domain.Common.Exceptions;
using ERP_Pro.Domain.Accounting.ValueObjects;
using ERP_Pro.Domain.Accounting.Events;
using System.Collections.Generic;

namespace ERP_Pro.Domain.Accounting.Entities
{
    public class Account : AggregateRoot<AccountId>
    {
        // الحقول الرئيسية
        public AccountCode AccountCode { get; private set; }
        public string AccountName { get; private set; }
        public string? AccountNameEng { get; private set; }
        public int AccountLevel { get; private set; }
        public AccountId? ParentAccountId { get; private set; }
        public Account ParentAccount { get; private set; }
        public ICollection<Account> ChildAccounts { get; private set; } = new List<Account>();
        public AccountTypeEnum ASM { get; private set; }
        public int? AccountGroupingId { get; private set; }
        public AccountGrouping AccountGrouping { get; private set; }
        public int AccountReport { get; private set; }
        public AccountReportType AccountReportType { get; private set; }
        public long? AccountAnalysis { get; private set; }
        public int? AccountClassNo { get; private set; }
        public bool AccountClosed { get; private set; }
        public DebitOrCreditEnum DebitOrCredit { get; private set; }
        public string? CurrencyDiffCode { get; private set; }
        public bool UseCostCenter { get; private set; }
        public bool UseProject { get; private set; }
        public bool ConnectionPeriod { get; private set; }
        public bool FavoriteAccount { get; private set; }
        public int? FlowType { get; private set; }
        public string? InactiveReason { get; private set; }
        public DateTime? InactiveDate { get; private set; }
        public DateTime? ConfirmLastDate { get; private set; }
        public long? AccountOpNo { get; private set; }
        public int? AccountExpenseType { get; private set; }
        public bool UseExpenseBranch { get; private set; }
        public bool ImportedXls { get; private set; }
        public int? AccountDtlType { get; private set; }
        public bool UseActivity { get; private set; }
        public int? AddedByUserId { get; private set; }
        public DateTime? AddedDate { get; private set; }
        public int? UpdatedByUserId { get; private set; }
        public DateTime? UpdatedDate { get; private set; }
        public long? UpdateCount { get; private set; }
        public long? ReportPriority { get; private set; }
        public string? AddedTerminal { get; private set; }
        public string? UpdatedTerminal { get; private set; }
        public bool UseTDSFlag { get; private set; }
        public bool AdvExpRevenueFlag { get; private set; }

		// العلاقات
	// علاقات أساسية
	public Account ParentAccount { get; set; }
	public ICollection<Account> ChildAccounts { get; set; }
	public ICollection<AccountCurrency> AccountCurrencies { get; set; }
	public AccountGrouping AccountGrouping { get; set; }
	public AccountReportType AccountReportType { get; set; }
	public AccountType AccountType { get; set; }
	public AccountClass AccountClass { get; set; }

	// علاقات مع الحركات والتفاصيل
	public ICollection<JournalDetail> JournalDetails { get; set; }
	public ICollection<MasterJournal> MasterJournals { get; set; }
	public ICollection<VoucherDetail> VoucherDetails { get; set; }
	public ICollection<TaxAccount> TaxAccounts { get; set; }
	public ICollection<OpenBalance> OpenBalances { get; set; }
	public ICollection<AuditTrail> AuditTrails { get; set; }
	public ICollection<AuditAccDetail> AuditAccountDetails { get; set; }
	public ICollection<AuditAccMaster> AuditAccountMasters { get; set; }
	public ICollection<CurrencyDiffTmp> CurrencyDiffTemps { get; set; }

	// علاقات N:M مع الفروع ومراكز التكلفة والمشاريع والأنشطة
	public ICollection<CostCenter> CostCenters { get; set; }
	public ICollection<Project> Projects { get; set; }
	public ICollection<Activity> Activities { get; set; }
	public ICollection<Branch> Branches { get; set; }

	// علاقات مع المستخدمين
	public User AddedByUser { get; set; }
	public User UpdatedByUser { get; set; }

        // الدوال البنائية (Constructors)
        protected Account() { }

        public Account(AccountId id, AccountCode code, string name, int level, AccountTypeEnum asm, int accountReport)
        {
            Id = id;
            AccountCode = code;
            AccountName = name;
            AccountLevel = level;
            ASM = asm;
            AccountReport = accountReport;

            // إضافة حدث إنشاء حساب
            AddDomainEvent(new AccountCreatedDomainEvent(Id));
        }

        // أمثلة على الدوال
        public void UpdateName(string name, string? nameEng = null)
        {
            if (string.IsNullOrWhiteSpace(name))
                throw new AccountDomainException("Account name cannot be empty.");

            AccountName = name;
            AccountNameEng = nameEng;
            AddDomainEvent(new AccountUpdatedDomainEvent(Id));
        }

        public void Close(string reason, DateTime date)
        {
            AccountClosed = true;
            InactiveReason = reason;
            InactiveDate = date;
            AddDomainEvent(new AccountClosedDomainEvent(Id));
        }

        public void Activate()
        {
            AccountClosed = false;
            InactiveReason = null;
            InactiveDate = null;
            AddDomainEvent(new AccountActivatedDomainEvent(Id));
        }

        // ... باقي الدوال حسب الحاجة
    }
}
