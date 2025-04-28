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
    /// كيان نوع تقرير محاسبي (ACCOUNT_REPORT_TYPE)
    /// الحقول من ملف الجداول
    /// العلاقات: One-to-Many مع الحسابات (Account)
    /// الأحداث: أساسية (إنشاء/تعديل/حذف)
    /// متوافق مع طبقة الـ Common
    /// </summary>
    public class AccountReportType : AggregateRoot<AccountReportTypeId>
    {
        public int? ReportType { get; private set; }
        public string ReportName { get; private set; }
        public string? ReportEName { get; private set; }
        public bool? ReportBS { get; private set; }
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

        private void RaiseEvent(string operationType)
        {
            AddDomainEvent(new AccountReportTypeChangedEvent(
                this.Id,
                operationType,
                this.ReportType,
                this.ReportName,
                this.ReportEName
            ));
        }

        public AccountReportType(AccountReportTypeId id, string reportName, string? reportEName, bool? reportBS,
            int? addedByUserId, DateTime? addedDate, long? reportPriority = null, string? addedTerminal = null)
            : base(id)
        {
            ReportName = reportName ?? throw new ArgumentNullException(nameof(reportName));
            ReportEName = reportEName;
            ReportBS = reportBS;
            AddedByUserId = addedByUserId;
            AddedDate = addedDate;
            ReportPriority = reportPriority;
            AddedTerminal = addedTerminal;
            RaiseEvent("Created");
        }

        public void Update(string reportName, string? reportEName, bool? reportBS, int? updatedByUserId, DateTime? updatedDate, string? updatedTerminal)
        {
            ReportName = reportName;
            ReportEName = reportEName;
            ReportBS = reportBS;
            UpdatedByUserId = updatedByUserId;
            UpdatedDate = updatedDate;
            UpdatedTerminal = updatedTerminal;
            UpdateCount = (UpdateCount ?? 0) + 1;
            RaiseEvent("Updated");
        }

        public void Delete()
        {
            RaiseEvent("Deleted");
        }

        // EF ctor
        private AccountReportType() : base(null!) { }
    }
}