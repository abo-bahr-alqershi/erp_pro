using System;
using System.Collections.Generic;
using Common.Domain;
using Accounting.Domain.ValueObjects;
using Accounting.Domain.Events;

namespace Accounting.Domain.Entities
{
    /// <summary>
    /// كيان سند القيد المالي (GLS_VCHR_MST_ACCNT)
    /// جميع الحقول والعلاقات والأحداث من ملفات المشروع (جداول، علاقات، ترايجرات)
    /// </summary>
    public class JournalVoucher : AggregateRoot<JournalVoucherId>
    {
        public int VoucherType { get; private set; }
        public long VoucherNo { get; private set; }
        public long? VoucherSerial { get; private set; }
        public DateTime VoucherDate { get; private set; }
        public bool? VoucherPost { get; private set; }
        public string? Description { get; private set; }
        public string? RefNo { get; private set; }
        public string? ReportCode { get; private set; }
        public bool? StandBy { get; private set; }
        public int? AttachNo { get; private set; }
        public int? AuditRef { get; private set; }
        public string? AuditRefDesc { get; private set; }
        public int? AuditRefUserId { get; private set; }
        public DateTime? AuditRefDate { get; private set; }
        public int? AddedByUserId { get; private set; }
        public DateTime? AddedDate { get; private set; }
        public int? UpdatedByUserId { get; private set; }
        public DateTime? UpdatedDate { get; private set; }
        public long? UpdateCount { get; private set; }
        public int CompanyNo { get; private set; }
        public int BranchNo { get; private set; }
        public int? BranchYear { get; private set; }
        public int? BranchUser { get; private set; }
        public int? PostUserId { get; private set; }
        public DateTime? PostDate { get; private set; }
        public int? UnpostUserId { get; private set; }
        public DateTime? UnpostDate { get; private set; }
        public long? ReportPriority { get; private set; }
        public int? ExternalPost { get; private set; }
        public string? AddedTerminal { get; private set; }
        public string? UpdatedTerminal { get; private set; }

        // العلاقات: نوع السند
        public virtual JournalVoucherType JournalVoucherType { get; private set; } = null!;
        // العلاقات: تفاصيل القيد
        public virtual ICollection<JournalDetail> JournalDetails { get; private set; } = new List<JournalDetail>();
        // العلاقات: المرفقات
        public virtual Attachment? Attachment { get; private set; }
        // العلاقات: الفرع والشركة
        public virtual Branch Branch { get; private set; } = null!;
        public virtual Company Company { get; private set; } = null!;

        // الأحداث الدومينية (من التريجر)
        private void RaiseAuditEvent(string operationType, string? userName)
        {
            AddDomainEvent(new JournalVoucherChangedAuditEvent(
                this.Id,
                operationType,
                userName,
                DateTime.UtcNow,
                this.CompanyNo,
                this.BranchNo,
                this.VoucherDate,
                this.VoucherPost,
                this.Description
            ));
        }

        // منشئ الكيان (مع إطلاق حدث إضافة)
        public JournalVoucher(
            JournalVoucherId id,
            int voucherType,
            long voucherNo,
            DateTime voucherDate,
            int companyNo,
            int branchNo,
            long? voucherSerial = null,
            bool? voucherPost = null,
            string? description = null,
            string? refNo = null,
            string? reportCode = null,
            bool? standBy = null,
            int? attachNo = null,
            int? auditRef = null,
            string? auditRefDesc = null,
            int? auditRefUserId = null,
            DateTime? auditRefDate = null,
            int? addedByUserId = null,
            DateTime? addedDate = null,
            int? updatedByUserId = null,
            DateTime? updatedDate = null,
            long? updateCount = null,
            int? branchYear = null,
            int? branchUser = null,
            int? postUserId = null,
            DateTime? postDate = null,
            int? unpostUserId = null,
            DateTime? unpostDate = null,
            long? reportPriority = null,
            int? externalPost = null,
            string? addedTerminal = null,
            string? updatedTerminal = null
        ) : base(id)
        {
            VoucherType = voucherType;
            VoucherNo = voucherNo;
            VoucherSerial = voucherSerial;
            VoucherDate = voucherDate;
            VoucherPost = voucherPost;
            Description = description;
            RefNo = refNo;
            ReportCode = reportCode;
            StandBy = standBy;
            AttachNo = attachNo;
            AuditRef = auditRef;
            AuditRefDesc = auditRefDesc;
            AuditRefUserId = auditRefUserId;
            AuditRefDate = auditRefDate;
            AddedByUserId = addedByUserId;
            AddedDate = addedDate;
            UpdatedByUserId = updatedByUserId;
            UpdatedDate = updatedDate;
            UpdateCount = updateCount;
            CompanyNo = companyNo;
            BranchNo = branchNo;
            BranchYear = branchYear;
            BranchUser = branchUser;
            PostUserId = postUserId;
            PostDate = postDate;
            UnpostUserId = unpostUserId;
            UnpostDate = unpostDate;
            ReportPriority = reportPriority;
            ExternalPost = externalPost;
            AddedTerminal = addedTerminal;
            UpdatedTerminal = updatedTerminal;
            RaiseAuditEvent("Add", null);
        }

        public void Update(
            string? description,
            string? refNo,
            string? reportCode,
            bool? standBy,
            int? attachNo,
            int? auditRef,
            string? auditRefDesc,
            int? auditRefUserId,
            DateTime? auditRefDate,
            int? updatedByUserId,
            DateTime? updatedDate,
            string? updatedTerminal)
        {
            Description = description;
            RefNo = refNo;
            ReportCode = reportCode;
            StandBy = standBy;
            AttachNo = attachNo;
            AuditRef = auditRef;
            AuditRefDesc = auditRefDesc;
            AuditRefUserId = auditRefUserId;
            AuditRefDate = auditRefDate;
            UpdatedByUserId = updatedByUserId;
            UpdatedDate = updatedDate;
            UpdatedTerminal = updatedTerminal;
            UpdateCount = (UpdateCount ?? 0) + 1;
            RaiseAuditEvent("Update", null);
        }

        public void Post(int userId)
        {
            VoucherPost = true;
            PostUserId = userId;
            PostDate = DateTime.UtcNow;
            RaiseAuditEvent("Post", null);
        }

        public void Unpost(int userId)
        {
            VoucherPost = false;
            UnpostUserId = userId;
            UnpostDate = DateTime.UtcNow;
            RaiseAuditEvent("Unpost", null);
        }

        public void Delete(int? userId, string? userName)
        {
            RaiseAuditEvent("Delete", userName);
        }

        // EF/ORM
        private JournalVoucher() : base(null!) { }
    }
}