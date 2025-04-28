using System;
using Common.Domain;
using Accounting.Domain.ValueObjects;
using Accounting.Domain.Events;

namespace Accounting.Domain.Entities
{
    /// <summary>
    /// كيان صلاحية نوع سند القيد (GLS_VCHR_TYP_PRV)
    /// جميع الحقول، العلاقات، الأحداث مأخوذة من الجداول، العلاقات، التريجرات
    /// </summary>
    public class JournalVoucherTypePrivilege : AggregateRoot<JournalVoucherTypePrivilegeId>
    {
        public int VoucherType { get; private set; }
        public int VoucherTypeNo { get; private set; }
        public int UserId { get; private set; }
        public bool? AddFlag { get; private set; }
        public bool? ViewFlag { get; private set; }
        public DateTime? AddedDate { get; private set; }
        public int? AddedByUserId { get; private set; }
        public DateTime? UpdatedDate { get; private set; }
        public int? UpdatedByUserId { get; private set; }

        // العلاقات: نوع السند
        public virtual JournalVoucherType JournalVoucherType { get; private set; } = null!;
        // العلاقات: المستخدم
        public virtual User User { get; private set; } = null!;

        private void RaiseAuditEvent(string operationType, string? userName)
        {
            AddDomainEvent(new JournalVoucherTypePrivilegeChangedAuditEvent(
                this.Id,
                operationType,
                userName,
                DateTime.UtcNow,
                this.AddFlag,
                this.ViewFlag
            ));
        }

        public JournalVoucherTypePrivilege(
            JournalVoucherTypePrivilegeId id,
            int voucherType,
            int voucherTypeNo,
            int userId,
            bool? addFlag,
            bool? viewFlag,
            DateTime? addedDate = null,
            int? addedByUserId = null
        ) : base(id)
        {
            VoucherType = voucherType;
            VoucherTypeNo = voucherTypeNo;
            UserId = userId;
            AddFlag = addFlag;
            ViewFlag = viewFlag;
            AddedDate = addedDate;
            AddedByUserId = addedByUserId;
            RaiseAuditEvent("Add", null);
        }

        public void Update(bool? addFlag, bool? viewFlag, int? updatedByUserId, DateTime? updatedDate)
        {
            AddFlag = addFlag;
            ViewFlag = viewFlag;
            UpdatedByUserId = updatedByUserId;
            UpdatedDate = updatedDate;
            RaiseAuditEvent("Update", null);
        }

        public void Delete(string? userName)
        {
            RaiseAuditEvent("Delete", userName);
        }

        // EF/ORM
        private JournalVoucherTypePrivilege() : base(null!) { }
    }
}