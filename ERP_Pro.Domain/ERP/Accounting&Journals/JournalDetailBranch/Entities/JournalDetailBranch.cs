using System;
using Domain.Common;

namespace Accounting.Domain.Journals
{
    /// <summary>
    /// يمثل تفاصيل القيد اليومي الموزعة على الفروع (DETAIL_JOURNAL_V_BR)
    /// </summary>
    public class JournalDetailBranch : AggregateRoot<JournalDetailBranchId>
    {
        #region المعرف المركب
        /// <summary>المعرف الفريد للسطر (نوع القيد، رقم المستند، رقم السطر)</summary>
        public JournalDetailBranchId Id { get; private set; }
        #endregion

        // --- الحقول الأساسية ---
        /// <summary>رقم نوع القيد المحاسبي</summary>
        public int JVType { get; private set; }
        /// <summary>رقم المستند المحاسبي</summary>
        public long JDocNo { get; private set; }
        /// <summary>الرقم التسلسلي للسطر</summary>
        public decimal? JSerial { get; private set; }
        /// <summary>كود الحساب الرئيسي</summary>
        public string AccountCode { get; private set; }
        /// <summary>كود تفاصيل الحساب</summary>
        public string AccountDtlCode { get; private set; }
        /// <summary>نوع التفاصيل للحساب</summary>
        public int? AccountDtlType { get; private set; }
        /// <summary>رمز العملة</summary>
        public string CurrencyCode { get; private set; }
        /// <summary>وصف السطر المحاسبي</summary>
        public string JDesc { get; private set; }
        /// <summary>المبلغ المحاسبي بالعملة المحلية</summary>
        public decimal? JAmount { get; private set; }
        /// <summary>المبلغ بالعملة الأجنبية</summary>
        public decimal? JAmountForeign { get; private set; }
        /// <summary>سعر صرف الحساب</summary>
        public decimal? AccountRate { get; private set; }
        /// <summary>كود مركز التكلفة</summary>
        public string CostCenterCode { get; private set; }
        /// <summary>رقم المشروع</summary>
        public string ProjectNo { get; private set; }
        /// <summary>رقم النشاط</summary>
        public string ActivityNo { get; private set; }
        /// <summary>كود العميل</summary>
        public string CCode { get; private set; }
        /// <summary>كود المورد</summary>
        public string VCode { get; private set; }
        /// <summary>كود التقرير</summary>
        public string ReportCode { get; private set; }
        /// <summary>رقم المحصل</summary>
        public long? CollectorNo { get; private set; }
        /// <summary>رقم الاعتماد المستندي</summary>
        public string LCNo { get; private set; }
        /// <summary>رقم أمر التوريد أو الإصدار</summary>
        public string GRNo { get; private set; }
        /// <summary>رقم الصندوق أو البنك</summary>
        public long? CashBankNo { get; private set; }
        /// <summary>رقم السطر في القيد</summary>
        public long? RecordNo { get; private set; }
        /// <summary>رقم السطر الترتيبي</summary>
        public long? RecordNoOrd { get; private set; }
        /// <summary>نوع المستند المرجعي</summary>
        public int? DocTypeRef { get; private set; }
        /// <summary>نوع القيد المرجعي</summary>
        public int? DocJVTypeRef { get; private set; }
        /// <summary>رقم المستند المرجعي</summary>
        public long? DocNoRef { get; private set; }
        /// <summary>الرقم التسلسلي للمستند المرجعي</summary>
        public decimal? DocSerRef { get; private set; }
        /// <summary>تاريخ الاستحقاق للمستند المرجعي</summary>
        public DateTime? DocDueDate { get; private set; }
        /// <summary>رقم الفاتورة</summary>
        public long? BillNo { get; private set; }
        /// <summary>الرقم التسلسلي للفاتورة</summary>
        public decimal? BillSer { get; private set; }
        /// <summary>رقم أمين الصندوق</summary>
        public int? CashierNo { get; private set; }
        /// <summary>رقم العنصر</summary>
        public long? INo { get; private set; }
        /// <summary>رقم أمر العمل</summary>
        public long? WONo { get; private set; }
        /// <summary>الرقم التسلسلي لأمر العمل</summary>
        public decimal? WOSer { get; private set; }
        /// <summary>رقم مرجعي إضافي</summary>
        public string RefNo { get; private set; }
        /// <summary>رقم العقد</summary>
        public long? ContractNo { get; private set; }
        /// <summary>السيريال للعقد</summary>
        public decimal? ContractSerial { get; private set; }
        /// <summary>دفعة العقد</summary>
        public int? ContractBatch { get; private set; }
        /// <summary>رقم الشيك</summary>
        public decimal? ChequeNo { get; private set; }
        /// <summary>رقم الإشعار أو الملاحظة</summary>
        public string NoteNo { get; private set; }
        /// <summary>تسلسل المستند</summary>
        public decimal? DocSequence { get; private set; }
        /// <summary>علم الترحيل الخارجي</summary>
        public int? ExternalPost { get; private set; }
        /// <summary>رقم فرع المستند</summary>
        public int? DocBranchNo { get; private set; }
        /// <summary>ملاحظات</summary>
        public string Note { get; private set; }
        /// <summary>تسلسل المستند المرجعي</summary>
        public decimal? DocSequenceRef { get; private set; }
        /// <summary>رقم السطر المرجعي</summary>
        public long? RecordNoRef { get; private set; }
        /// <summary>رقم المستخدم الذي أنشأ السطر</summary>
        public int? AddedByUserId { get; private set; }
        /// <summary>تاريخ الإضافة</summary>
        public DateTime? AddedDate { get; private set; }
        /// <summary>رقم المستخدم الذي عدل السطر</summary>
        public int? UpdatedByUserId { get; private set; }
        /// <summary>تاريخ آخر تعديل</summary>
        public DateTime? UpdatedDate { get; private set; }
        /// <summary>عدد مرات التعديل</summary>
        public long? UpdateCount { get; private set; }
        /// <summary>رقم الشركة</summary>
        public int CompanyNo { get; private set; }
        /// <summary>رقم الفرع</summary>
        public int BranchNo { get; private set; }
        /// <summary>سنة الفرع</summary>
        public int? BranchYear { get; private set; }
        /// <summary>مستخدم الفرع</summary>
        public int? BranchUser { get; private set; }
        /// <summary>اسم الجهاز عند الإضافة</summary>
        public string AddedTerminal { get; private set; }
        /// <summary>اسم الجهاز عند التعديل</summary>
        public string UpdatedTerminal { get; private set; }
        /// <summary>نوع الحساب الضريبي</summary>
        public int? CalcTypeNoTax { get; private set; }
        /// <summary>نسبة الضريبة</summary>
        public decimal? TaxPercent { get; private set; }
        /// <summary>مبلغ الضريبة</summary>
        public decimal? TaxAmount { get; private set; }
        /// <summary>نوع المستند للموارد البشرية</summary>
        public decimal? HrsDocTypeRef { get; private set; }
        /// <summary>الرقم التسلسلي للمستند للموارد البشرية</summary>
        public decimal? HrsDocSerRef { get; private set; }
        /// <summary>رقم المستند للموارد البشرية</summary>
        public decimal? HrsDocNoRef { get; private set; }
        /// <summary>حقل إضافي 1</summary>
        public string Fld1 { get; private set; }
        /// <summary>حقل إضافي 2</summary>
        public string Fld2 { get; private set; }
        /// <summary>حقل إضافي 3</summary>
        public string Fld3 { get; private set; }
        /// <summary>حقل إضافي 4</summary>
        public string Fld4 { get; private set; }
        /// <summary>حقل إضافي 5</summary>
        public string Fld5 { get; private set; }
        /// <summary>حقل إضافي 6</summary>
        public string Fld6 { get; private set; }
        /// <summary>حقل إضافي 7</summary>
        public string Fld7 { get; private set; }
        /// <summary>حقل إضافي 8</summary>
        public string Fld8 { get; private set; }
        /// <summary>حقل إضافي 9</summary>
        public string Fld9 { get; private set; }
        /// <summary>حقل إضافي 10</summary>
        public string Fld10 { get; private set; }

        #region العلاقات (Navigations)

	/// <summary>العلاقة مع تفاصيل القيد الرئيسي (JournalDetail)</summary>
	public virtual JournalDetail JournalDetail { get; private set; }

	/// <summary>العلاقة مع الحساب الرئيسي</summary>
	public virtual Account Account { get; private set; }

	/// <summary>العلاقة مع تفاصيل الحساب</summary>
	public virtual AccountDetail AccountDetail { get; private set; }

	/// <summary>العلاقة مع مركز التكلفة</summary>
	public virtual CostCenter CostCenter { get; private set; }

	/// <summary>العلاقة مع المشروع</summary>
	public virtual Project Project { get; private set; }

	/// <summary>العلاقة مع النشاط</summary>
	public virtual Activity Activity { get; private set; }

	/// <summary>العلاقة مع العميل</summary>
	public virtual Customer Customer { get; private set; }

	/// <summary>العلاقة مع المورد</summary>
	public virtual Vendor Vendor { get; private set; }

	/// <summary>العلاقة مع الفرع</summary>
	public virtual Branch Branch { get; private set; }

	/// <summary>العلاقة مع الشركة</summary>
	public virtual Company Company { get; private set; }

	/// <summary>العلاقة مع العملة</summary>
	public virtual Currency Currency { get; private set; }

	/// <summary>العلاقة مع المستخدم الذي أضاف السطر</summary>
	public virtual User AddedByUser { get; private set; }

	/// <summary>العلاقة مع المستخدم الذي عدّل السطر</summary>
	public virtual User UpdatedByUser { get; private set; }

	/// <summary>العلاقة مع المحصل</summary>
	public virtual Collector Collector { get; private set; }

	/// <summary>العلاقة مع الاعتماد المستندي</summary>
	public virtual LetterOfCredit LetterOfCredit { get; private set; }

	/// <summary>العلاقة مع أمر التوريد أو الإصدار</summary>
	public virtual GoodsReceipt GoodsReceipt { get; private set; }

	/// <summary>العلاقة مع صندوق أو بنك</summary>
	public virtual CashBank CashBank { get; private set; }

	/// <summary>العلاقة مع الفاتورة</summary>
	public virtual Bill Bill { get; private set; }

	/// <summary>العلاقة مع أمين الصندوق</summary>
	public virtual Cashier Cashier { get; private set; }

	/// <summary>العلاقة مع العنصر</summary>
	public virtual Item Item { get; private set; }

	/// <summary>العلاقة مع أمر العمل</summary>
	public virtual WorkOrder WorkOrder { get; private set; }

	/// <summary>العلاقة مع العقد</summary>
	public virtual Contract Contract { get; private set; }

	/// <summary>العلاقة مع الدفعة (العقد)</summary>
	public virtual ContractBatch ContractBatch { get; private set; }

	/// <summary>العلاقة مع الشيك</summary>
	public virtual Cheque Cheque { get; private set; }

	/// <summary>العلاقة مع إشعار أو ملاحظة</summary>
	public virtual Note NoteEntity { get; private set; }

	/// <summary>العلاقة مع تقرير مخصص</summary>
	public virtual Report Report { get; private set; }

	/// <summary>العلاقة مع نوع المستند المرجعي (DocumentType)</summary>
	public virtual DocumentType DocumentTypeRef { get; private set; }

	/// <summary>العلاقة مع القيد المرجعي (Journal)</summary>
	public virtual Journal JournalRef { get; private set; }

	/// <summary>العلاقة مع السطر المرجعي (Self Reference)</summary>
	public virtual JournalDetailBranch ReferenceLine { get; private set; }

	/// <summary>العلاقة مع المستندات المرتبطة بالموارد البشرية</summary>
	public virtual HRDocument HRDocument { get; private set; }

	/// <summary>العلاقة مع المستخدم الخاص بالفرع</summary>
	public virtual User BranchUserEntity { get; private set; }

        #endregion

	#region الأحداث الدومينية (Domain Events) لموديل JournalDetailBranch


	/// <summary>
	/// إطلاق حدث إنشاء تفاصيل القيد للفرع (يستخدم عند إضافة سطر جديد في الجدول).
	/// </summary>
	public void RaiseCreated(int? userId)
	    => AddDomainEvent(new JournalDetailBranchCreatedEvent(Id, DateTime.UtcNow, userId));

	/// <summary>
	/// إطلاق حدث تعديل تفاصيل القيد للفرع (يستخدم عند حفظ/تعديل بيانات السطر).
	/// </summary>
	public void RaiseUpdated(int? userId)
	    => AddDomainEvent(new JournalDetailBranchUpdatedEvent(Id, DateTime.UtcNow, userId));

	/// <summary>
	/// إطلاق حدث حذف تفاصيل القيد للفرع (يستخدم عند حذف السطر نهائياً من النظام).
	/// </summary>
	public void RaiseDeleted(int? userId)
	    => AddDomainEvent(new JournalDetailBranchDeletedEvent(Id, DateTime.UtcNow, userId));

	/// <summary>
	/// إطلاق حدث مراجعة السطر من قبل مدقق أو مسؤول مراجعة.
	/// </summary>
	public void RaiseReviewed(int? reviewerId)
	    => AddDomainEvent(new JournalDetailBranchReviewedEvent(Id, reviewerId, DateTime.UtcNow));

	/// <summary>
	/// إطلاق حدث طلب تدقيق للسطر (طلب مراجعة رسمية أو اعتماد من جهة تدقيق).
	/// </summary>
	public void RaiseAuditRequested(int? requestedById)
	    => AddDomainEvent(new JournalDetailBranchAuditRequestedEvent(Id, requestedById, DateTime.UtcNow));

	/// <summary>
	/// إطلاق حدث اعتماد التدقيق (تمت الموافقة من جهة التدقيق/الرقابة).
	/// </summary>
	public void RaiseAudited(int? auditorId)
	    => AddDomainEvent(new JournalDetailBranchAuditedEvent(Id, auditorId, DateTime.UtcNow));

	/// <summary>
	/// إطلاق حدث رفض التدقيق (تم رفض السطر أو تسجيل ملاحظات تدقيق عليه).
	/// </summary>
	public void RaiseAuditRejected(int? auditorId, string reason)
	    => AddDomainEvent(new JournalDetailBranchAuditRejectedEvent(Id, auditorId, reason, DateTime.UtcNow));

	/// <summary>
	/// إطلاق حدث الترحيل المالي للسطر (تم ترحيل السطر محاسبيًا ضمن العمليات المالية).
	/// </summary>
	public void RaiseFinancialPosted(int? postedById)
	    => AddDomainEvent(new JournalDetailBranchFinancialPostedEvent(Id, postedById, DateTime.UtcNow));

	/// <summary>
	/// إطلاق حدث إلغاء الترحيل المالي (تمت عملية إلغاء الترحيل أو التراجع عن الترحيل).
	/// </summary>
	public void RaiseFinancialUnposted(int? unpostedById)
	    => AddDomainEvent(new JournalDetailBranchFinancialUnpostedEvent(Id, unpostedById, DateTime.UtcNow));

	/// <summary>
	/// إطلاق حدث إعادة فتح السطر (بعد قفل أو ترحيل أو مراجعة).
	/// </summary>
	public void RaiseReopened(int? userId)
	    => AddDomainEvent(new JournalDetailBranchReopenedEvent(Id, userId, DateTime.UtcNow));

	/// <summary>
	/// إطلاق حدث حصول خطأ أثناء المعالجة المالية للسطر (يستخدم لتسجيل أخطاء الدومين أو التكامل).
	/// </summary>
	public void RaiseError(string errorMessage)
	    => AddDomainEvent(new JournalDetailBranchErrorEvent(Id, errorMessage, DateTime.UtcNow));

	/// <summary>
	/// إطلاق حدث تغيير حقل حساس (مثل الحساب - الفرع - المبلغ) مع تسجيل القيمتين القديمة والجديدة.
	/// </summary>
	public void RaiseFieldChanged(string fieldName, object oldValue, object newValue, int? userId)
	    => AddDomainEvent(new JournalDetailBranchFieldChangedEvent(Id, fieldName, oldValue, newValue, userId, DateTime.UtcNow));

	/// <summary>
	/// إطلاق حدث رفض وصول (محاولة تنفيذ عملية بدون صلاحية).
	/// </summary>
	public void RaisePermissionDenied(int? userId)
	    => AddDomainEvent(new JournalDetailBranchPermissionDeniedEvent(Id, userId, DateTime.UtcNow));

	/// <summary>
	/// إطلاق حدث تنفيذ عملية غير مسموحة دومينيًا (مثل محاولة التعديل على سطر مقفل/مرحل).
	/// </summary>
	public void RaiseInvalidOperation(string operation, int? userId)
	    => AddDomainEvent(new JournalDetailBranchInvalidOperationEvent(Id, operation, userId, DateTime.UtcNow));

	#endregion

	#region الاستثناءات الدومينية (Domain Exceptions) لموديل JournalDetailBranch

	/// <summary>
	/// يطلق استثناء عند محاولة إضافة سطر مكرر لنفس الفرع.
	/// </summary>
	public void GuardAlreadyExists()
	    => throw new JournalDetailBranchAlreadyExistsException("هذا السطر موجود بالفعل ولا يمكن تكراره.");

	/// <summary>
	/// يطلق استثناء عند محاولة الوصول لسطر غير موجود.
	/// </summary>
	public void GuardNotFound()
	    => throw new JournalDetailBranchNotFoundException("تعذر العثور على السطر المطلوب.");

	/// <summary>
	/// يطلق استثناء عند محاولة أي عملية على سطر مقفل أو مرحل.
	/// </summary>
	public void GuardLocked()
	    => throw new JournalDetailBranchLockedException("لا يمكن التعديل أو الحذف لأن السطر مقفل أو مرحل.");

	/// <summary>
	/// يطلق استثناء عند محاولة الترحيل المالي بدون مراجعة.
	/// </summary>
	public void GuardReviewRequired()
	    => throw new JournalDetailBranchReviewRequiredException("يجب مراجعة السطر قبل الترحيل المالي.");

	/// <summary>
	/// يطلق استثناء عند محاولة معالجة مالية بدون تدقيق.
	/// </summary>
	public void GuardAuditRequired()
	    => throw new JournalDetailBranchAuditRequiredException("يجب تدقيق السطر قبل المعالجة المالية.");

	/// <summary>
	/// يطلق استثناء عند رفض تدقيق السطر.
	/// </summary>
	public void GuardAuditRejected()
	    => throw new JournalDetailBranchAuditRejectedException("تم رفض تدقيق السطر ولا يمكن الاستمرار.");

	/// <summary>
	/// يطلق استثناء عند حصول خطأ في المعالجة المالية.
	/// </summary>
	public void GuardFinancialError(string reason)
	    => throw new JournalDetailBranchFinancialErrorException($"حصل خطأ في المعالجة المالية: {reason}");

	/// <summary>
	/// يطلق استثناء عند وجود حالة غير منطقية.
	/// </summary>
	public void GuardInvalidState(string reason)
	    => throw new JournalDetailBranchInvalidStateException($"حالة السطر غير منطقية: {reason}");

	/// <summary>
	/// يطلق استثناء عند محاولة وصول غير مصرح.
	/// </summary>
	public void GuardPermissionDenied()
	    => throw new JournalDetailBranchPermissionDeniedException("لا تملك الصلاحية لتنفيذ هذه العملية.");

	/// <summary>
	/// يطلق استثناء عند محاولة حذف وله أبناء أو ارتباطات.
	/// </summary>
	public void GuardDeleteWithChildren()
	    => throw new JournalDetailBranchDeleteWithChildrenException("لا يمكن حذف السطر لوجود ارتباطات تابعة.");

	/// <summary>
	/// يطلق استثناء عند محاولة التعامل مع فرع غير موجود.
	/// </summary>
	public void GuardBranchNotFound()
	    => throw new JournalDetailBranchBranchNotFoundException("الفرع غير موجود بالنظام.");

	/// <summary>
	/// يطلق استثناء عند محاولة التعامل مع تاريخ ترحيل مغلق.
	/// </summary>
	public void GuardPostingDateClosed()
	    => throw new JournalDetailBranchPostingDateClosedException("تاريخ الترحيل مغلق ولا يمكن المعالجة.");

	/// <summary>
	/// يطلق استثناء عند محاولة وصول مستخدم غير مصرّح.
	/// </summary>
	public void GuardUserNotAuthorized()
	    => throw new JournalDetailBranchUserNotAuthorizedException("المستخدم غير مخول لتنفيذ هذه العملية.");

	/// <summary>
	/// يطلق استثناء عند تجاوز المبلغ المسموح أو وجود قيمة غير منطقية.
	/// </summary>
	public void GuardAmountOutOfRange(string reason)
	    => throw new JournalDetailBranchAmountOutOfRangeException($"قيمة المبلغ غير منطقية: {reason}");

	/// <summary>
	/// يطلق استثناء عند عدم وجود مستند مرجعي.
	/// </summary>
	public void GuardReferenceNotFound()
	    => throw new JournalDetailBranchReferenceNotFoundException("المستند المرجعي غير موجود.");

	/// <summary>
	/// يطلق استثناء عند تكرار الرقم التسلسلي.
	/// </summary>
	public void GuardDuplicatedSerial()
	    => throw new JournalDetailBranchDuplicatedSerialException("الرقم التسلسلي مكرر ولا يمكن تكراره.");

	/// <summary>
	/// يطلق استثناء عند حساب غير نشط (مثال على استخدام الحماية مع حالة الدومين).
	/// </summary>
	public void GuardAccountInactive()
	    => throw new JournalDetailBranchInvalidStateException("الحساب غير نشط.");

	#endregion


        #region البناء
        private JournalDetailBranch() { }
        // أضف هنا Constructor كامل بجميع الحقول حسب الحاجة
        #endregion
    }
}
