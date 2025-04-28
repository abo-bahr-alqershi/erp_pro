using System;
using System.Collections.Generic;
using Common.Domain;
using Common.Domain.ValueObjects;
using Common.Domain.Events;

namespace Accounting.Domain.Entities
{
    /// <summary>
    /// يمثل كيان مجموعة الحسابات (ACCOUNT_GROUPING)
    /// جميع الحقول مأخوذة من ملف الجداول
    /// الأحداث مستوحاة من التريجرات (راجع AUD_ACCOUNT_GROUPING_TGR)
    /// العلاقات: One-to-Many مع الحسابات (Account)
    /// يتوافق مع قاعدة الـ Common (يرث AggregateRoot، Id ValueObject، أحداث، ... إلخ)
    /// </summary>
    public class AccountGroup : AggregateRoot<AccountGroupId>
    {
        /// <summary>
        /// رقم المجموعة الفريد (GroupNo)
        /// </summary>
        public int? GroupNo { get; private set; }

        /// <summary>
        /// اسم المجموعة بالعربي (GroupName)
        /// </summary>
        public string GroupName { get; private set; }

        /// <summary>
        /// اسم المجموعة بالإنجليزي (GroupEName)
        /// </summary>
        public string? GroupEName { get; private set; }

        /// <summary>
        /// رقم المستخدم الذي أضاف المجموعة (AddedByUserId)
        /// </summary>
        public int? AddedByUserId { get; private set; }

        /// <summary>
        /// تاريخ إضافة المجموعة (AddedDate)
        /// </summary>
        public DateTime? AddedDate { get; private set; }

        /// <summary>
        /// رقم المستخدم الذي عدّل المجموعة (UpdatedByUserId)
        /// </summary>
        public int? UpdatedByUserId { get; private set; }

        /// <summary>
        /// آخر تاريخ تعديل (UpdatedDate)
        /// </summary>
        public DateTime? UpdatedDate { get; private set; }

        /// <summary>
        /// عدد مرات التعديل (UpdateCount)
        /// </summary>
        public long? UpdateCount { get; private set; }

        /// <summary>
        /// أولوية الظهور في التقارير (ReportPriority)
        /// </summary>
        public long? ReportPriority { get; private set; }

        /// <summary>
        /// اسم الجهاز عند الإضافة (AddedTerminal)
        /// </summary>
        public string? AddedTerminal { get; private set; }

        /// <summary>
        /// اسم الجهاز عند التعديل (UpdatedTerminal)
        /// </summary>
        public string? UpdatedTerminal { get; private set; }

        /// <summary>
        /// الحسابات التابعة لهذه المجموعة (العلاقة من ملف العلاقات)
        /// </summary>
        public virtual ICollection<Account> Accounts { get; private set; } = new List<Account>();

        // الأحداث الدومينية (من التريجر)
        private void RaiseAuditEvent(string operationType, string? userName = null)
        {
            AddDomainEvent(new AccountGroupChangedAuditEvent(
                this.Id,
                operationType,
                userName,
                DateTime.UtcNow,
                this.GroupNo,
                this.GroupName,
                this.GroupEName
            ));
        }

        // منشئ الكيان (مع إطلاق حدث إضافة)
        public AccountGroup(AccountGroupId id, string groupName, string? groupEName,
                            int? addedByUserId, DateTime? addedDate, long? reportPriority = null, string? addedTerminal = null)
            : base(id)
        {
            GroupName = groupName ?? throw new ArgumentNullException(nameof(groupName));
            GroupEName = groupEName;
            AddedByUserId = addedByUserId;
            AddedDate = addedDate;
            ReportPriority = reportPriority;
            AddedTerminal = addedTerminal;
            RaiseAuditEvent("Add");
        }

        // دالة التعديل (تطلق حدث تعديل)
        public void Update(string groupName, string? groupEName, int? updatedByUserId, DateTime? updatedDate, string? updatedTerminal)
        {
            GroupName = groupName;
            GroupEName = groupEName;
            UpdatedByUserId = updatedByUserId;
            UpdatedDate = updatedDate;
            UpdatedTerminal = updatedTerminal;
            UpdateCount = (UpdateCount ?? 0) + 1;
            RaiseAuditEvent("Update");
        }

        // دالة الحذف المنطقي (تطلق حدث حذف)
        public void Delete(int? userId, string? userName)
        {
            // من الممكن وضع منطق حذف إضافي أو soft delete هنا
            RaiseAuditEvent("Delete", userName);
        }

        // EF/ORM
        private AccountGroup() : base(null!) { }
    }
}