using ERP_Pro.Domain.Common.Primitives;
using ERP_Pro.Accounting.Domain.MasterJournalBranch.Events;
using ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions;
using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch
{
    public class MasterJournalBranch : AggregateRoot<MasterJournalBranchId>
    {
        // جميع الحقول من جدول MASTER_JOURNAL_V_BR مع شرح كل حقل
        public int JVType { get; private set; } // JV_TYPE: رقم نوع القيد الرئيسي للفرع
        public long JDocNo { get; private set; } // J_DOC_NO: رقم المستند الرئيسي للفرع
        public long? JSerial { get; private set; } // J_SER: الرقم التسلسلي للسطر
        public int? JPost { get; private set; } // J_POST: حالة الترحيل (1=مرحل)
        public DateTime JDate { get; private set; } // J_DATE: تاريخ القيد
        public decimal? BatchVal { get; private set; } // BATCH_VAL: قيمة الدفعة
        public string? RefNo { get; private set; } // REF_NO: رقم مرجعي إضافي
        public int? RevrsJrnl { get; private set; } // REVRS_JRNL: علم يوضح إذا كان القيد عكسي
        public int? PeriodicalJrnl { get; private set; } // PERIODICAL_JRNL: علم يوضح إذا كان القيد دوري
        public int? CashReserve { get; private set; } // CASH_RESERVE: احتياطي نقدي
        public int? StandBy { get; private set; } // STAND_BY: قيد احتياطي
        public int? LinkUse { get; private set; } // LINK_USE: استخدام الربط
        public int? AttachNo { get; private set; } // ATTACH_NO: رقم المرفق
        public string? BenName { get; private set; } // BEN_NAME: اسم المستفيد
        public string? RecName { get; private set; } // REC_NAME: اسم المستلم
        public string? TDesc { get; private set; } // T_DESC: وصف القيد
        public int? AuditRef { get; private set; } // AUDIT_REF: مرجع التدقيق
        public string? AuditRefDesc { get; private set; } // AUDIT_REF_DESC: وصف مرجع التدقيق
        public int? AuditRefUserId { get; private set; } // AUDIT_REF_U_ID: رقم المستخدم لمرجع التدقيق
        public DateTime? AuditRefDate { get; private set; } // AUDIT_REF_DATE: تاريخ مرجع التدقيق
        public long? ReportPriority { get; private set; } // PR_REP: أولوية التقرير
        public int? ClsZeroAcBlc { get; private set; } // CLS_ZERO_AC_BLNC: إغلاق الأرصدة الصفرية
        public int? ExternalPost { get; private set; } // EXTERNAL_POST: علم الترحيل الخارجي
        public int? AddedByUserId { get; private set; } // AD_U_ID: رقم المستخدم الذي أضاف السطر
        public DateTime? AddedDate { get; private set; } // AD_DATE: تاريخ الإضافة
        public int? UpdatedByUserId { get; private set; } // UP_U_ID: رقم المستخدم الذي عدل السطر
        public DateTime? UpdatedDate { get; private set; } // UP_DATE: تاريخ آخر تعديل
        public long? UpdateCount { get; private set; } // UP_CNT: عدد مرات التعديل
        public int? PostUserId { get; private set; } // POST_U_ID: رقم المستخدم الذي رحل
        public DateTime? PostDate { get; private set; } // POST_DATE: تاريخ الترحيل
        public int? UnpostUserId { get; private set; } // UNPOST_U_ID: رقم المستخدم الذي ألغى الترحيل
        public DateTime? UnpostDate { get; private set; } // UNPOST_DATE: تاريخ إلغاء الترحيل
        public string? Field1 { get; private set; } // FIELD1: حقل إضافي
        public string? Field2 { get; private set; } // FIELD2: حقل إضافي
        public string? Field3 { get; private set; } // FIELD3: حقل إضافي
        public string? Field4 { get; private set; } // FIELD4: حقل إضافي
        public string? Field5 { get; private set; } // FIELD5: حقل إضافي
        public string? Field6 { get; private set; } // FIELD6: حقل إضافي
        public string? Field7 { get; private set; } // FIELD7: حقل إضافي
        public string? Field8 { get; private set; } // FIELD8: حقل إضافي
        public string? Field9 { get; private set; } // FIELD9: حقل إضافي
        public string? Field10 { get; private set; } // FIELD10: حقل إضافي
        public int? CompanyNo { get; private set; } // CMP_NO: رقم الشركة
        public int? BranchNo { get; private set; } // BRN_NO: رقم الفرع
        public int? BranchYear { get; private set; } // BRN_YEAR: سنة الفرع
        public int? BranchUser { get; private set; } // BRN_USR: مستخدم الفرع
        public string? AddedTerminal { get; private set; } // AD_TRMNL_NM: اسم الجهاز عند الإضافة
        public string? UpdatedTerminal { get; private set; } // UP_TRMNL_NM: اسم الجهاز عند التعديل

        // العلاقات (Navigation Properties) - تضاف لاحقًا حسب ملف العلاقات

        // الدوال الدومينية مع إطلاق الأحداث والاستثناءات المناسبة

        public void Post(int userId)
        {
            if (JPost == 1)
                throw new JournalArchiveNotAllowedException(); // مثال: لا يمكن ترحيل قيد مرحل مسبقًا

            JPost = 1;
            PostUserId = userId;
            PostDate = DateTime.UtcNow;
            AddDomainEvent(new MasterJournalBranchPostedEvent(Id, userId));
        }

        public void Unpost(int userId)
        {
            if (JPost != 1)
                throw new JournalRestoreNotAllowedException(); // مثال: لا يمكن إلغاء ترحيل قيد غير مرحل

            JPost = 0;
            UnpostUserId = userId;
            UnpostDate = DateTime.UtcNow;
            AddDomainEvent(new MasterJournalBranchUnpostedEvent(Id, userId));
        }

        public void Audit(int userId)
        {
            if (AuditRefUserId.HasValue)
                throw new JournalComplianceViolationException("Already audited.");

            AuditRefUserId = userId;
            AuditRefDate = DateTime.UtcNow;
            AddDomainEvent(new MasterJournalBranchAuditedEvent(Id, userId));
        }

        public void Archive(int userId)
        {
            if (JPost != 1)
                throw new JournalArchiveNotAllowedException();

            // ...منطق الأرشفة...
            AddDomainEvent(new MasterJournalBranchArchivedEvent(Id, userId));
        }

        public void Restore(int userId)
        {
            // ...منطق الاستعادة...
            AddDomainEvent(new MasterJournalBranchRestoredEvent(Id, userId));
        }

        public void Delete(int userId)
        {
            // ...منطق الحذف المنطقي...
            AddDomainEvent(new MasterJournalBranchDeletedEvent(Id, userId));
        }

        public void DetectFraud(string details)
        {
            AddDomainEvent(new MasterJournalBranchFraudDetectedEvent(Id, details));
            throw new JournalFraudSuspicionException(details);
        }

        public void SecurityAudit(string action, int userId)
        {
            AddDomainEvent(new MasterJournalBranchSecurityAuditEvent(Id, action, userId));
        }

        /// <summary>
        /// إطلاق حدث إنشاء قيد رئيسي جديد للفرع.
        /// </summary>
        public void RaiseCreated()
            => AddDomainEvent(new MasterJournalBranchCreatedEvent(Id));

        /// <summary>
        /// إطلاق حدث ترحيل القيد.
        /// </summary>
        public void RaisePosted(int userId)
            => AddDomainEvent(new MasterJournalBranchPostedEvent(Id, userId));

        /// <summary>
        /// إطلاق حدث إلغاء الترحيل.
        /// </summary>
        public void RaiseUnposted(int userId)
            => AddDomainEvent(new MasterJournalBranchUnpostedEvent(Id, userId));

        /// <summary>
        /// إطلاق حدث تدقيق القيد.
        /// </summary>
        public void RaiseAudited(int auditedByUserId)
            => AddDomainEvent(new MasterJournalBranchAuditedEvent(Id, auditedByUserId));

        /// <summary>
        /// إطلاق حدث اكتشاف شبهة احتيال أو تلاعب في القيد.
        /// </summary>
        public void RaiseFraudDetected(string details)
            => AddDomainEvent(new MasterJournalBranchFraudDetectedEvent(Id, details));

        /// <summary>
        /// إطلاق حدث أمني (محاولة وصول غير مصرح أو تغيير مستخدم).
        /// </summary>
        public void RaiseSecurityAudit(string action, int userId)
            => AddDomainEvent(new MasterJournalBranchSecurityAuditEvent(Id, action, userId));

        /// <summary>
        /// إطلاق حدث أرشفة القيد.
        /// </summary>
        public void RaiseArchived(int userId)
            => AddDomainEvent(new MasterJournalBranchArchivedEvent(Id, userId));

        /// <summary>
        /// إطلاق حدث استعادة القيد من الأرشيف.
        /// </summary>
        public void RaiseRestored(int userId)
            => AddDomainEvent(new MasterJournalBranchRestoredEvent(Id, userId));

        /// <summary>
        /// إطلاق حدث حذف القيد.
        /// </summary>
        public void RaiseDeleted(int userId)
            => AddDomainEvent(new MasterJournalBranchDeletedEvent(Id, userId));

        // منشئ الكيان
        public MasterJournalBranch(
            int jvType,
            long jDocNo,
            DateTime jDate,
            long? jSerial = null,
            int? jPost = null,
            decimal? batchVal = null,
            string? refNo = null,
            int? revrsJrnl = null,
            int? periodicalJrnl = null,
            int? cashReserve = null,
            int? standBy = null,
            int? linkUse = null,
            int? attachNo = null,
            string? benName = null,
            string? recName = null,
            string? tDesc = null,
            int? auditRef = null,
            string? auditRefDesc = null,
            int? auditRefUserId = null,
            DateTime? auditRefDate = null,
            long? reportPriority = null,
            int? clsZeroAcBlc = null,
            int? externalPost = null,
            int? addedByUserId = null,
            DateTime? addedDate = null,
            int? updatedByUserId = null,
            DateTime? updatedDate = null,
            long? updateCount = null,
            int? postUserId = null,
            DateTime? postDate = null,
            int? unpostUserId = null,
            DateTime? unpostDate = null,
            string? field1 = null,
            string? field2 = null,
            string? field3 = null,
            string? field4 = null,
            string? field5 = null,
            string? field6 = null,
            string? field7 = null,
            string? field8 = null,
            string? field9 = null,
            string? field10 = null,
            int? companyNo = null,
            int? branchNo = null,
            int? branchYear = null,
            int? branchUser = null,
            string? addedTerminal = null,
            string? updatedTerminal = null
        )
            : base(new MasterJournalBranchId(jvType, jDocNo))
        {
            JVType = jvType;
            JDocNo = jDocNo;
            JDate = jDate;
            JSerial = jSerial;
            JPost = jPost;
            BatchVal = batchVal;
            RefNo = refNo;
            RevrsJrnl = revrsJrnl;
            PeriodicalJrnl = periodicalJrnl;
            CashReserve = cashReserve;
            StandBy = standBy;
            LinkUse = linkUse;
            AttachNo = attachNo;
            BenName = benName;
            RecName = recName;
            TDesc = tDesc;
            AuditRef = auditRef;
            AuditRefDesc = auditRefDesc;
            AuditRefUserId = auditRefUserId;
            AuditRefDate = auditRefDate;
            ReportPriority = reportPriority;
            ClsZeroAcBlc = clsZeroAcBlc;
            ExternalPost = externalPost;
            AddedByUserId = addedByUserId;
            AddedDate = addedDate;
            UpdatedByUserId = updatedByUserId;
            UpdatedDate = updatedDate;
            UpdateCount = updateCount;
            PostUserId = postUserId;
            PostDate = postDate;
            UnpostUserId = unpostUserId;
            UnpostDate = unpostDate;
            Field1 = field1;
            Field2 = field2;
            Field3 = field3;
            Field4 = field4;
            Field5 = field5;
            Field6 = field6;
            Field7 = field7;
            Field8 = field8;
            Field9 = field9;
            Field10 = field10;
            CompanyNo = companyNo;
            BranchNo = branchNo;
            BranchYear = branchYear;
            BranchUser = branchUser;
            AddedTerminal = addedTerminal;
            UpdatedTerminal = updatedTerminal;

            AddDomainEvent(new MasterJournalBranchCreatedEvent(Id));
        }

        // ...دوال حماية/تعديل حسب الحاجة...

        // جميع الاستثناءات الدومينية الخاصة بـ MasterJournalBranch (من مجلد Exceptions)
        // ملاحظة: إذا كانت الاستثناءات موجودة في ملفات منفصلة في مجلد Exceptions، لا داعي لتكرار الكود هنا، فقط أضف using وأشر إليها.
        // إذا أردت تضمينها هنا بشكل داخلي (Nested)، أضفها جميعًا كما يلي:

        /// <summary>
        /// يُرمى عند محاولة مستخدم تنفيذ عملية بدون صلاحية كافية.
        /// </summary>
        public class JournalUserPermissionDeniedException : Exception
        {
            public JournalUserPermissionDeniedException()
                : base("User does not have permission to perform this operation on the journal entry.") { }
        }

        /// <summary>
        /// يُرمى عند محاولة استعادة قيد غير مسموح باستعادته.
        /// </summary>
        public class JournalRestoreNotAllowedException : Exception
        {
            public JournalRestoreNotAllowedException()
                : base("Restoring this journal entry is not allowed.") { }
        }

        /// <summary>
        /// يُرمى عند الاشتباه في وجود احتيال أو تلاعب في القيد.
        /// </summary>
        public class JournalFraudSuspicionException : Exception
        {
            public JournalFraudSuspicionException(string? details = null)
                : base($"Fraud suspicion detected in journal entry.{(details != null ? " Details: " + details : "")}") { }
        }

        /// <summary>
        /// يُرمى عند انتهاك القيد لسياسات أو قوانين الامتثال.
        /// </summary>
        public class JournalComplianceViolationException : Exception
        {
            public JournalComplianceViolationException(string? details = null)
                : base($"Journal entry compliance violation.{(details != null ? " Details: " + details : "")}") { }
        }

        /// <summary>
        /// يُرمى عند وجود تعارض بين بيانات الشركة في القيد والعملية.
        /// </summary>
        public class JournalCompanyMismatchException : Exception
        {
            public JournalCompanyMismatchException()
                : base("Company information mismatch for the journal entry.") { }
        }

        /// <summary>
        /// يُرمى عند وجود تعارض بين بيانات الفرع في القيد والعملية.
        /// </summary>
        public class JournalBranchMismatchException : Exception
        {
            public JournalBranchMismatchException()
                : base("Branch information mismatch for the journal entry.") { }
        }

        /// <summary>
        /// يُرمى عند محاولة أرشفة قيد غير مسموح بأرشفته.
        /// </summary>
        public class JournalArchiveNotAllowedException : Exception
        {
            public JournalArchiveNotAllowedException()
                : base("Archiving this journal entry is not allowed.") { }
        }
    }
}
