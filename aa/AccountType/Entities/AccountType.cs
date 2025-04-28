using System;
using System.Collections.Generic;
using Common.Domain;
using Common.Domain.ValueObjects;
using Common.Domain.Events;
using Accounting.Domain.ValueObjects;
using Accounting.Domain.Events;

namespace Accounting.Domain.Entities
{
    /// <summary>
    /// كيان نوع الحساب المحاسبي (ACCOUNT_TYPES)
    /// جميع الحقول من ملف الجداول
    /// العلاقات: One-to-Many مع الحسابات (Account)
    /// الأحداث: من التريجر AUD_ACCOUNT_TYPES_TGR
    /// متوافق مع طبقة الـ Common
    /// </summary>
    public class AccountType : AggregateRoot<AccountTypeId>
    {
        public int? TypeNo { get; private set; }
        public string AccountTypeName { get; private set; }
        public string? AccountTypeEName { get; private set; }
        public bool? AffectedByTrans { get; private set; }
        public int? AddedByUserId { get; private set; }
        public DateTime? AddedDate { get; private set; }
        public int? UpdatedByUserId { get; private set; }
        public DateTime? UpdatedDate { get; private set; }
        public long? UpdateCount { get; private set; }
        public long? ReportPriority { get; private set; }
        public string? AddedTerminal { get; private set; }
        public string? UpdatedTerminal { get; private set; }

        /// <summary>
        /// الحسابات المرتبطة بهذا النوع (العلاقة من ملف العلاقات)
        /// </summary>
        public virtual ICollection<Account> Accounts { get; private set; } = new List<Account>();

        private void RaiseAuditEvent(string operationType, string? userName = null)
        {
            AddDomainEvent(new AccountTypeChangedAuditEvent(
                this.Id,
                operationType,
                userName,
                DateTime.UtcNow,
                this.TypeNo,
                this.AccountTypeName,
                this.AccountTypeEName
            ));
        }

        public AccountType(AccountTypeId id, string accountTypeName, string? accountTypeEName, bool? affectedByTrans,
            int? addedByUserId, DateTime? addedDate, long? reportPriority = null, string? addedTerminal = null)
            : base(id)
        {
            AccountTypeName = accountTypeName ?? throw new ArgumentNullException(nameof(accountTypeName));
            AccountTypeEName = accountTypeEName;
            AffectedByTrans = affectedByTrans;
            AddedByUserId = addedByUserId;
            AddedDate = addedDate;
            ReportPriority = reportPriority;
            AddedTerminal = addedTerminal;
            RaiseAuditEvent("Add");
        }

        public void Update(string accountTypeName, string? accountTypeEName, bool? affectedByTrans,
            int? updatedByUserId, DateTime? updatedDate, string? updatedTerminal)
        {
            AccountTypeName = accountTypeName;
            AccountTypeEName = accountTypeEName;
            AffectedByTrans = affectedByTrans;
            UpdatedByUserId = updatedByUserId;
            UpdatedDate = updatedDate;
            UpdatedTerminal = updatedTerminal;
            UpdateCount = (UpdateCount ?? 0) + 1;
            RaiseAuditEvent("Update");
        }

        public void Delete(int? userId, string? userName)
        {
            RaiseAuditEvent("Delete", userName);
        }

        // EF/ORM
        private AccountType() : base(null!) { }
    }
}