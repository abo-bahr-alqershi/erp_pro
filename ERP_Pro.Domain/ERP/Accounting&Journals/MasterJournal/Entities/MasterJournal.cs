using System;
using System.Collections.Generic;
using ERP.Domain.Common;
using ERP.Domain.Accounting.ValueObjects;
using ERP.Domain.Accounting.Events;

namespace ERP.Domain.Accounting.Entities
{
    /// <summary>
    /// يمثل رأس القيد المحاسبي (Master Journal Entry) في النظام المحاسبي.
    /// هذا الكيان هو AggregateRoot ويمثل جميع بيانات القيد المحاسبي الأساسية والعمليات عليه.
    /// يحتوي على جميع الحقول كما في قاعدة البيانات، ويرتبط بعلاقات مع تفاصيل القيد والفروع،
    /// ويرتبط بجميع الأحداث الدومينية والتدقيقية وفق نظام ERP متقدم.
    /// </summary>
    public class MasterJournal : AggregateRoot<MasterJournalId>
    {
        // --- الحقول الأساسية كما في الجدول MASTER_JOURNAL_V ---
        public int JVType { get; private set; }                // نوع القيد الرئيسي
        public long JDocNo { get; private set; }               // رقم المستند الرئيسي
        public long? JSerial { get; private set; }             // الرقم التسلسلي
        public int? JPost { get; private set; }                // حالة الترحيل (1 = مرحل)
        public DateTime JDate { get; private set; }            // تاريخ القيد
        public decimal? BatchVal { get; private set; }         // قيمة الدفعة
        public string? RefNo { get; private set; }             // رقم مرجعي إضافي
        public int? RevrsJrnl { get; private set; }            // هل القيد عكسي
        public int? PeriodicalJrnl { get; private set; }       // هل القيد دوري
        public int? CashReserve { get; private set; }          // احتياطي نقدي
        public int? StandBy { get; private set; }              // قيد احتياطي
        public int? LinkUse { get; private set; }              // استخدام الربط
        public int? AttachNo { get; private set; }             // رقم المرفق
        public string? BenName { get; private set; }           // اسم المستفيد
        public string? RecName { get; private set; }           // اسم المستلم
        public string? TDesc { get; private set; }             // وصف القيد الرئيسي
        public int? AuditRef { get; private set; }             // مرجع التدقيق
        public string? AuditRefDesc { get; private set; }      // وصف مرجع التدقيق
        public int? AuditRefUserId { get; private set; }       // مستخدم مرجع التدقيق
        public DateTime? AuditRefDate { get; private set; }    // تاريخ مرجع التدقيق
        public long? ReportPriority { get; private set; }      // أولوية التقرير
        public int? ClsZeroAcBlc { get; private set; }         // إغلاق الأرصدة الصفرية
        public int? ExternalPost { get; private set; }         // علم الترحيل الخارجي

        // --- بيانات التتبع والتدقيق ---
        public int? AddedByUserId { get; private set; }
        public DateTime? AddedDate { get; private set; }
        public int? UpdatedByUserId { get; private set; }
        public DateTime? UpdatedDate { get; private set; }
        public long? UpdateCount { get; private set; }
        public int? PostUserId { get; private set; }
        public DateTime? PostDate { get; private set; }
        public int? UnpostUserId { get; private set; }
        public DateTime? UnpostDate { get; private set; }

        // --- الحقول الإضافية (للتوسعة المستقبلية) ---
        public string? Field1 { get; private set; }
        public string? Field2 { get; private set; }
        public string? Field3 { get; private set; }
        public string? Field4 { get; private set; }
        public string? Field5 { get; private set; }
        public string? Field6 { get; private set; }
        public string? Field7 { get; private set; }
        public string? Field8 { get; private set; }
        public string? Field9 { get; private set; }
        public string? Field10 { get; private set; }

        // --- بيانات الشركة والفرع ---
        public int CompanyNo { get; private set; }             // رقم الشركة
        public int BranchNo { get; private set; }              // رقم الفرع
        public int? BranchYear { get; private set; }           // السنة المالية للفرع
        public int? BranchUser { get; private set; }           // مستخدم الفرع
        public string? AddedTerminal { get; private set; }     // اسم جهاز الإدخال
        public string? UpdatedTerminal { get; private set; }   // اسم جهاز التعديل

        // --- العلاقات ---

        /// <summary>
        /// تفاصيل هذا القيد (One-to-Many: MasterJournal -> JournalDetail)
        /// </summary>
        public virtual ICollection<JournalDetail> Details { get; private set; } = new HashSet<JournalDetail>();

        /// <summary>
        /// فروع هذا القيد (One-to-Many: MasterJournal -> MasterJournalBranch)
        /// </summary>
        public virtual ICollection<MasterJournalBranch> Branches { get; private set; } = new HashSet<MasterJournalBranch>();

        /// <summary>
        /// المرفقات المرتبطة بهذا القيد (One-to-Many غالبًا)
        /// </summary>
        public virtual ICollection<Attachment> Attachments { get; private set; } = new HashSet<Attachment>();

        /// <summary>
        /// مرجع التدقيق المرتبط (Many-to-One)
        /// </summary>
        public virtual AuditReference? AuditReference { get; private set; }

        /// <summary>
        /// المستخدم الذي أضاف القيد (Many-to-One)
        /// </summary>
        public virtual User? AddedByUser { get; private set; }

        /// <summary>
        /// المستخدم الذي عدّل القيد (Many-to-One)
        /// </summary>
        public virtual User? UpdatedByUser { get; private set; }

        /// <summary>
        /// المستخدم الذي رحّل القيد (Many-to-One)
        /// </summary>
        public virtual User? PostedByUser { get; private set; }

        /// <summary>
        /// المستخدم الذي ألغى ترحيل القيد (Many-to-One)
        /// </summary>
        public virtual User? UnpostedByUser { get; private set; }

        /// <summary>
        /// المستخدم الذي قام بمرجع التدقيق (Many-to-One)
        /// </summary>
        public virtual User? AuditRefUser { get; private set; }

        /// <summary>
        /// الشركة المرتبطة بالقيد (Many-to-One)
        /// </summary>
        public virtual Company Company { get; private set; }

        /// <summary>
        /// الفرع المرتبط بالقيد (Many-to-One)
        /// </summary>
        public virtual Branch Branch { get; private set; }




        // --- الأحداث الدومينية والتدقيقية (تمثل جميع السيناريوهات الرئيسية والمحاسبية) ---


        /// <summary>
        /// يُطلق عند إنشاء رأس قيد محاسبي جديد (MasterJournal).
        /// Triggers when a new MasterJournal entry is created.
        /// </summary>
        public void AddCreatedEvent(int createdByUserId, DateTime createdAt)
        {
            AddDomainEvent(new MasterJournalCreatedEvent(Id, createdAt, createdByUserId));
        }

        /// <summary>
        /// يُطلق عند تعديل أي بيانات في رأس القيد المحاسبي.
        /// Triggered when any update occurs on MasterJournal.
        /// </summary>
        public void AddUpdatedEvent(int updatedByUserId, DateTime updatedAt)
        {
            AddDomainEvent(new MasterJournalUpdatedEvent(Id, updatedAt, updatedByUserId));
        }

        /// <summary>
        /// يُطلق عند حذف رأس قيد محاسبي.
        /// Triggered when a MasterJournal entry is deleted.
        /// </summary>
        public void AddDeletedEvent(int deletedByUserId, DateTime deletedAt)
        {
            AddDomainEvent(new MasterJournalDeletedEvent(Id, deletedAt, deletedByUserId));
        }

        /// <summary>
        /// يُطلق عند ترحيل رأس القيد (Post).
        /// Triggered when the MasterJournal is posted.
        /// </summary>
        public void AddPostedEvent(int postUserId, DateTime postDate)
        {
            AddDomainEvent(new MasterJournalPostedEvent(Id, postDate, postUserId));
        }

        /// <summary>
        /// يُطلق عند إلغاء الترحيل (Unpost) للقيد.
        /// Triggered when unposting the MasterJournal.
        /// </summary>
        public void AddUnpostedEvent(int unpostUserId, DateTime unpostDate)
        {
            AddDomainEvent(new MasterJournalUnpostedEvent(Id, unpostDate, unpostUserId));
        }

        /// <summary>
        /// يُطلق عند تنفيذ عملية قيد عكسي (Reverse).
        /// Triggered when a reverse journal entry is created.
        /// </summary>
        public void AddReversedEvent(Guid reversedJournalId, int reversedByUserId, DateTime reversedAt)
        {
            AddDomainEvent(new MasterJournalReversedEvent(Id, reversedJournalId, reversedAt, reversedByUserId));
        }

        /// <summary>
        /// يُطلق عند إنشاء أو معالجة قيد دوري (Periodical Journal).
        /// Triggered on periodic (recurring) journal entry operations.
        /// </summary>
        public void AddPeriodicEvent(DateTime periodDate, int periodType)
        {
            AddDomainEvent(new MasterJournalPeriodicEvent(Id, periodDate, periodType));
        }

        /// <summary>
        /// يُطلق عند تنفيذ عملية إغلاق الأرصدة الصفرية.
        /// Triggered when closing zero balances for accounts.
        /// </summary>
        public void AddClosedZeroBalanceEvent(int closedByUserId, DateTime closedAt)
        {
            AddDomainEvent(new MasterJournalClosedZeroBalanceEvent(Id, closedAt, closedByUserId));
        }

        /// <summary>
        /// يُطلق عند ترحيل القيد الخارجي (External Post).
        /// Triggered when MasterJournal is externally posted.
        /// </summary>
        public void AddExternalPostedEvent(int externalPostUserId, DateTime externalPostDate)
        {
            AddDomainEvent(new MasterJournalExternalPostedEvent(Id, externalPostDate, externalPostUserId));
        }

        /// <summary>
        /// يُطلق لكل عملية تدقيق (Audit) على رأس القيد - مستوحى من التريجرات.
        /// Triggered for every audit operation (add, update, delete) on MasterJournal.
        /// </summary>
        public void AddAuditTrailEvent(string operationType, int operationUserId, DateTime operationDate, string fieldName, string? oldValue, string? newValue, string? terminal)
        {
            AddDomainEvent(new MasterJournalAuditTrailEvent(
                Id, operationType, operationDate, operationUserId, fieldName, oldValue, newValue, terminal));
        }

        /// <summary>
        /// يُطلق عند أي تغيير بالمرفقات المرتبطة بالقيد.
        /// Triggered when attachments are added/removed/modified for the MasterJournal.
        /// </summary>
        public void AddAttachmentAuditEvent(string operationType, int userId, DateTime operationDate, string attachmentName)
        {
            AddDomainEvent(new MasterJournalAttachmentAuditEvent(Id, operationType, userId, operationDate, attachmentName));
        }

        /// <summary>
        /// يُطلق عند تغيير أي حقل حساس في رأس القيد (مثل التاريخ، المبلغ...إلخ).
        /// Triggered when a critical field in MasterJournal is changed (e.g., JDate, BatchVal...etc).
        /// </summary>
        public void AddFieldChangedEvent(string fieldName, string? oldValue, string? newValue, int changedByUserId, DateTime changedAt)
        {
            AddDomainEvent(new MasterJournalFieldChangedEvent(Id, fieldName, oldValue, newValue, changedByUserId, changedAt));
        }

        /// <summary>
        /// يُطلق عند مزامنة أو تحديث العلاقات (تفاصيل القيد - الفروع).
        /// Triggered when journal relations (details/branches) are synced or updated.
        /// </summary>
        public void AddRelationsSyncedEvent(DateTime syncedAt, string relationType)
        {
            AddDomainEvent(new MasterJournalRelationsSyncedEvent(Id, syncedAt, relationType));
        }

        // --- منشئ الكيان ---
        /// <summary>
        /// البناء الكامل للكيان مع جميع الحقول لضمان التكامل.
        /// </summary>
        public MasterJournal(
            int jvType,
            long jDocNo,
            DateTime jDate,
            int companyNo,
            int branchNo
            // يمكن إضافة باقي الحقول هنا أو عبر Setters/Methods حسب سياسة الدومين
        )
        {
            Id = new MasterJournalId(jvType, jDocNo);
            JVType = jvType;
            JDocNo = jDocNo;
            JDate = jDate;
            CompanyNo = companyNo;
            BranchNo = branchNo;

            // AddDomainEvent(new MasterJournalCreatedEvent(...)); // إضافة الحدث المناسب
        }

        // --- مثال لإضافة حدث عند الترحيل (Posting) ---
        public void Post(int userId, DateTime postDate)
        {
            JPost = 1;
            PostUserId = userId;
            PostDate = postDate;
            AddDomainEvent(new MasterJournalPostedEvent(Id, postDate, userId));
        }

        // --- مثال لإضافة حدث تدقيقي عند تغيير حقل حساس ---
        public void ChangeJDate(DateTime newDate, int changedByUserId)
        {
            var oldValue = JDate;
            JDate = newDate;
            AddDomainEvent(new MasterJournalFieldChangedEvent(Id, nameof(JDate), oldValue.ToString("yyyy-MM-dd"), newDate.ToString("yyyy-MM-dd"), changedByUserId, DateTime.Now));
        }

        // --- دوال استدعاء الاستثناءات لكل حالة محاسبية/تدقيقية مطلوبة ---

        /// <summary>
        /// تحقق من صلاحية الشركة.
        /// </summary>
        public void EnsureValidCompany(Func<int, bool> isValidCompany)
        {
            if (!isValidCompany(CompanyNo))
                throw new InvalidCompanyException("رقم الشركة غير صالح أو غير معرف.");
        }

        /// <summary>
        /// تحقق من صلاحية الفرع.
        /// </summary>
        public void EnsureValidBranch(Func<int, bool> isValidBranch)
        {
            if (!isValidBranch(BranchNo))
                throw new InvalidBranchException("رقم الفرع غير صالح أو غير معرف.");
        }

        /// <summary>
        /// تحقق من عدم تكرار القيد.
        /// </summary>
        public static void EnsureNotDuplicate(bool alreadyExists)
        {
            if (alreadyExists)
                throw new DuplicateJournalException("يوجد قيد بنفس النوع والرقم.");
        }

        /// <summary>
        /// تحقق من صحة الحقول الأساسية (مثل التاريخ، المبلغ، الرقم المرجعي...).
        /// </summary>
        public void EnsureFieldValidation(Func<MasterJournal, bool> isValid)
        {
            if (!isValid(this))
                throw new FieldValidationException("خطأ في أحد الحقول الأساسية.");
        }

        /// <summary>
        /// تحقق من صحة قيمة الدفعة.
        /// </summary>
        public void EnsureValidBatchValue(Func<decimal?, bool> isValidBatch)
        {
            if (!isValidBatch(BatchVal))
                throw new InvalidBatchValueException("قيمة الدفعة غير منطقية أو غير متوافقة مع السياسات.");
        }

        /// <summary>
        /// تحقق من وجود المرفقات المطلوبة.
        /// </summary>
        public void EnsureAttachmentExists(Func<MasterJournal, bool> attachmentChecker)
        {
            if (!attachmentChecker(this))
                throw new AttachmentMissingException("يوجد مرفق مطلوب غير موجود.");
        }

        /// <summary>
        /// تحقق من صلاحية عملية الترحيل الخارجي.
        /// </summary>
        public void EnsureExternalPostAllowed(bool isAllowed)
        {
            if (!isAllowed)
                throw new ExternalPostViolationException("عملية الترحيل الخارجي غير مصرح بها.");
        }

        /// <summary>
        /// تحقق من صلاحية الترحيل.
        /// </summary>
        public void EnsureNotAlreadyPosted()
        {
            if (JPost == 1)
                throw new JournalAlreadyPostedException("القيد مرحّل بالفعل.");
        }

        /// <summary>
        /// تحقق من صلاحية إلغاء الترحيل.
        /// </summary>
        public void EnsureNotAlreadyUnposted()
        {
            if (JPost != 1)
                throw new JournalAlreadyUnpostedException("القيد غير مرحّل أو أُلغي ترحيله سابقًا.");
        }

        /// <summary>
        /// تحقق من وجود القيد المحاسبي.
        /// </summary>
        public static void EnsureJournalFound(object? journal)
        {
            if (journal == null)
                throw new JournalNotFoundException("لم يتم العثور على القيد المطلوب.");
        }

        /// <summary>
        /// تحقق من عدم قفل الفترة المالية.
        /// </summary>
        public void EnsurePeriodNotClosed(Func<DateTime, bool> isClosed)
        {
            if (isClosed(JDate))
                throw new JournalPeriodClosedException("الفترة المالية مغلقة لا يمكن التعديل.");
        }

        /// <summary>
        /// تحقق من عدم مخالفة قفل الفترة.
        /// </summary>
        public void EnsureNoPeriodLockViolation(Func<DateTime, bool> isLocked)
        {
            if (isLocked(JDate))
                throw new PeriodLockViolationException("لا يمكن العمل على قيد ضمن فترة مغلقة.");
        }

        /// <summary>
        /// تحقق من عدم وجود قفل تدقيقي على القيد.
        /// </summary>
        public void EnsureNotLockedForAudit(bool isLockedForAudit)
        {
            if (isLockedForAudit)
                throw new JournalLockedForAuditException("القيد مغلق للتدقيق ولا يمكن التعديل.");
        }

        /// <summary>
        /// تحقق من السماح بالتحرير اليدوي.
        /// </summary>
        public void EnsureManualEditAllowed(bool isAllowed)
        {
            if (!isAllowed)
                throw new JournalManualEditForbiddenException("التحرير اليدوي للقيد غير مصرح به.");
        }

        /// <summary>
        /// تحقق من وجود صلاحية للمستخدم الحالي.
        /// </summary>
        public void EnsureUserAuthorized(bool isAuthorized)
        {
            if (!isAuthorized)
                throw new UnauthorizedJournalOperationException("المستخدم الحالي غير مصرح له بهذه العملية.");
        }

        /// <summary>
        /// تحقق من جواز حذف القيد.
        /// </summary>
        public void EnsureDeleteAllowed(Func<MasterJournal, bool> canDelete)
        {
            if (!canDelete(this))
                throw new MasterJournalDeleteNotAllowedException("حذف القيد غير مسموح.");
        }

        /// <summary>
        /// تحقق من جواز استرجاع القيد.
        /// </summary>
        public void EnsureRestoreAllowed(bool isAllowed)
        {
            if (!isAllowed)
                throw new MasterJournalRestoreNotAllowedException("استرجاع القيد غير مسموح.");
        }

        /// <summary>
        /// تحقق من صحة مزامنة الفروع.
        /// </summary>
        public void EnsureBranchSync(bool isSynced)
        {
            if (!isSynced)
                throw new JournalBranchSyncException("خطأ في مزامنة بيانات الفروع.");
        }

        /// <summary>
        /// تحقق من صحة مزامنة التفاصيل.
        /// </summary>
        public void EnsureDetailSync(bool isSynced)
        {
            if (!isSynced)
                throw new JournalDetailSyncException("خطأ في مزامنة تفاصيل القيد.");
        }

        /// <summary>
        /// تحقق من عدم العبث بسجلات التدقيق.
        /// </summary>
        public void EnsureNoAuditTrailTampering(bool isTamperingDetected)
        {
            if (isTamperingDetected)
                throw new JournalAuditTrailTamperingException("تم رصد محاولة عبث أو تعديل غير مشروع في سجلات التدقيق.");
        }

        /// <summary>
        /// تحقق من السماح بعمل قيد عكسي.
        /// </summary>
        public void EnsureReverseAllowed(bool isAllowed)
        {
            if (!isAllowed)
                throw new JournalReverseNotAllowedException("عمل قيد عكسي غير مسموح حسب السياسات أو الفترة المحاسبية.");
        }
    }
}
