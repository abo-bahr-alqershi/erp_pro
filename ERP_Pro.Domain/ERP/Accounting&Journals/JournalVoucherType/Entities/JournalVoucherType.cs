using System;
using System.Collections.Generic;
using Common.Domain;
using Accounting.Domain.ValueObjects;
using Accounting.Domain.Events;

namespace Accounting.Domain.Entities
{
    /// <summary>
    /// كيان نوع سند القيد المحاسبي (GLS_VCHR_TYP_ACNT)
    /// جميع الحقول وجميع العلاقات والأحداث مطبقة من الجداول والعلاقات والتريجرات
    /// </summary>
    public class JournalVoucherType : AggregateRoot<JournalVoucherTypeId>
    {
        public int VoucherType { get; private set; }
        public int? VoucherTypeNo { get; private set; }
        public string? AccountCode { get; private set; }
        public string? AccountDtlCode { get; private set; }
        public int? AccountDtlType { get; private set; }
        public int? AddedByUserId { get; private set; }
        public DateTime? AddedDate { get; private set; }
        public int? UpdatedByUserId { get; private set; }
        public DateTime? UpdatedDate { get; private set; }

        // العلاقات: سندات القيد المرتبطة بهذا النوع
        public virtual ICollection<JournalVoucher> JournalVouchers { get; private set; } = new List<JournalVoucher>();
        // العلاقات: صلاحيات وخصائص النوع
        public virtual ICollection<JournalVoucherTypePrivilege> Privileges { get; private set; } = new List<JournalVoucherTypePrivilege>();
        // العلاقات: الحساب الافتراضي
        public virtual Account? Account { get; private set; }
        public virtual AccountDtl? AccountDtl { get; private set; }

        private void RaiseAuditEvent(string operationType, string? userName)
        {
            AddDomainEvent(new JournalVoucherTypeChangedAuditEvent(
                this.Id,
                operationType,
                userName,
                DateTime.UtcNow,
                this.VoucherTypeNo,
                this.AccountCode,
                this.AccountDtlCode,
                this.AccountDtlType
            ));
        }

        // منشئ الكيان (مع إطلاق حدث إضافة)
        public JournalVoucherType(
            JournalVoucherTypeId id,
            int voucherType,
            int? voucherTypeNo = null,
            string? accountCode = null,
            string? accountDtlCode = null,
            int? accountDtlType = null,
            int? addedByUserId = null,
            DateTime? addedDate = null
        ) : base(id)
        {
            VoucherType = voucherType;
            VoucherTypeNo = voucherTypeNo;
            AccountCode = accountCode;
            AccountDtlCode = accountDtlCode;
            AccountDtlType = accountDtlType;
            AddedByUserId = addedByUserId;
            AddedDate = addedDate;
            RaiseAuditEvent("Add", null);
        }

        public void Update(
            int? voucherTypeNo,
            string? accountCode,
            string? accountDtlCode,
            int? accountDtlType,
            int? updatedByUserId,
            DateTime? updatedDate)
        {
            VoucherTypeNo = voucherTypeNo;
            AccountCode = accountCode;
            AccountDtlCode = accountDtlCode;
            AccountDtlType = accountDtlType;
            UpdatedByUserId = updatedByUserId;
            UpdatedDate = updatedDate;
            RaiseAuditEvent("Update", null);
        }

        public void Delete(string? userName)
        {
            RaiseAuditEvent("Delete", userName);
        }

        // EF/ORM
        private JournalVoucherType() : base(null!) { }
    }
}