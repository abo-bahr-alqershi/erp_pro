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

        #endregion

	#region الأحداث الدومينية (Domain Events) لموديل JournalDetailBranch

	/// <summary>يتم إطلاق هذا الحدث عند إنشاء تفاصيل القيد للفرع.</summary>
	public class JournalDetailBranchCreatedEvent : DomainEventBase
	{
	    public JournalDetailBranchId Id { get; }
	    public DateTime OccurredOn { get; }
	    public int? UserId { get; }
	    public JournalDetailBranchCreatedEvent(JournalDetailBranchId id, DateTime occurredOn, int? userId)
	    {
		Id = id;
		OccurredOn = occurredOn;
		UserId = userId;
	    }
	}

	/// <summary>يتم إطلاق هذا الحدث عند تعديل تفاصيل القيد للفرع.</summary>
	public class JournalDetailBranchUpdatedEvent : DomainEventBase
	{
	    public JournalDetailBranchId Id { get; }
	    public DateTime OccurredOn { get; }
	    public int? UserId { get; }
	    public JournalDetailBranchUpdatedEvent(JournalDetailBranchId id, DateTime occurredOn, int? userId)
	    {
		Id = id;
		OccurredOn = occurredOn;
		UserId = userId;
	    }
	}

	/// <summary>يتم إطلاق هذا الحدث عند حذف تفاصيل القيد للفرع.</summary>
	public class JournalDetailBranchDeletedEvent : DomainEventBase
	{
	    public JournalDetailBranchId Id { get; }
	    public DateTime OccurredOn { get; }
	    public int? UserId { get; }
	    public JournalDetailBranchDeletedEvent(JournalDetailBranchId id, DateTime occurredOn, int? userId)
	    {
		Id = id;
		OccurredOn = occurredOn;
		UserId = userId;
	    }
	}

	/// <summary>يتم إطلاق هذا الحدث عند مراجعة السطر من مدقق.</summary>
	public class JournalDetailBranchReviewedEvent : DomainEventBase
	{
	    public JournalDetailBranchId Id { get; }
	    public int? ReviewerId { get; }
	    public DateTime ReviewedOn { get; }
	    public JournalDetailBranchReviewedEvent(JournalDetailBranchId id, int? reviewerId, DateTime reviewedOn)
	    {
		Id = id;
		ReviewerId = reviewerId;
		ReviewedOn = reviewedOn;
	    }
	}

	/// <summary>يتم إطلاق هذا الحدث عند طلب تدقيق للسطر.</summary>
	public class JournalDetailBranchAuditRequestedEvent : DomainEventBase
	{
	    public JournalDetailBranchId Id { get; }
	    public int? RequestedById { get; }
	    public DateTime RequestedOn { get; }
	    public JournalDetailBranchAuditRequestedEvent(JournalDetailBranchId id, int? requestedById, DateTime requestedOn)
	    {
		Id = id;
		RequestedById = requestedById;
		RequestedOn = requestedOn;
	    }
	}

	/// <summary>يتم إطلاق هذا الحدث عند اعتماد التدقيق.</summary>
	public class JournalDetailBranchAuditedEvent : DomainEventBase
	{
	    public JournalDetailBranchId Id { get; }
	    public int? AuditorId { get; }
	    public DateTime AuditedOn { get; }
	    public JournalDetailBranchAuditedEvent(JournalDetailBranchId id, int? auditorId, DateTime auditedOn)
	    {
		Id = id;
		AuditorId = auditorId;
		AuditedOn = auditedOn;
	    }
	}

	/// <summary>يتم إطلاق هذا الحدث عند رفض التدقيق للسطر.</summary>
	public class JournalDetailBranchAuditRejectedEvent : DomainEventBase
	{
	    public JournalDetailBranchId Id { get; }
	    public int? AuditorId { get; }
	    public string Reason { get; }
	    public DateTime RejectedOn { get; }
	    public JournalDetailBranchAuditRejectedEvent(JournalDetailBranchId id, int? auditorId, string reason, DateTime rejectedOn)
	    {
		Id = id;
		AuditorId = auditorId;
		Reason = reason;
		RejectedOn = rejectedOn;
	    }
	}

	/// <summary>يتم إطلاق هذا الحدث عند الترحيل المالي للسطر.</summary>
	public class JournalDetailBranchFinancialPostedEvent : DomainEventBase
	{
	    public JournalDetailBranchId Id { get; }
	    public int? PostedById { get; }
	    public DateTime PostedOn { get; }
	    public JournalDetailBranchFinancialPostedEvent(JournalDetailBranchId id, int? postedById, DateTime postedOn)
	    {
		Id = id;
		PostedById = postedById;
		PostedOn = postedOn;
	    }
	}

	/// <summary>يتم إطلاق هذا الحدث عند إلغاء الترحيل المالي للسطر.</summary>
	public class JournalDetailBranchFinancialUnpostedEvent : DomainEventBase
	{
	    public JournalDetailBranchId Id { get; }
	    public int? UnpostedById { get; }
	    public DateTime UnpostedOn { get; }
	    public JournalDetailBranchFinancialUnpostedEvent(JournalDetailBranchId id, int? unpostedById, DateTime unpostedOn)
	    {
		Id = id;
		UnpostedById = unpostedById;
		UnpostedOn = unpostedOn;
	    }
	}

	/// <summary>يتم إطلاق هذا الحدث عند إعادة فتح السطر بعد قفل أو ترحيل.</summary>
	public class JournalDetailBranchReopenedEvent : DomainEventBase
	{
	    public JournalDetailBranchId Id { get; }
	    public int? UserId { get; }
	    public DateTime ReopenedOn { get; }
	    public JournalDetailBranchReopenedEvent(JournalDetailBranchId id, int? userId, DateTime reopenedOn)
	    {
		Id = id;
		UserId = userId;
		ReopenedOn = reopenedOn;
	    }
	}

	/// <summary>يتم إطلاق هذا الحدث عند حصول خطأ أثناء معالجة مالية للسطر.</summary>
	public class JournalDetailBranchErrorEvent : DomainEventBase
	{
	    public JournalDetailBranchId Id { get; }
	    public string ErrorMessage { get; }
	    public DateTime OccurredOn { get; }
	    public JournalDetailBranchErrorEvent(JournalDetailBranchId id, string errorMessage, DateTime occurredOn)
	    {
		Id = id;
		ErrorMessage = errorMessage;
		OccurredOn = occurredOn;
	    }
	}

	/// <summary>يتم إطلاق هذا الحدث عند تغيير حقل حساس (فرع، حساب...)</summary>
	public class JournalDetailBranchFieldChangedEvent : DomainEventBase
	{
	    public JournalDetailBranchId Id { get; }
	    public string FieldName { get; }
	    public object OldValue { get; }
	    public object NewValue { get; }
	    public int? UserId { get; }
	    public DateTime ChangedOn { get; }
	    public JournalDetailBranchFieldChangedEvent(JournalDetailBranchId id, string fieldName, object oldValue, object newValue, int? userId, DateTime changedOn)
	    {
		Id = id;
		FieldName = fieldName;
		OldValue = oldValue;
		NewValue = newValue;
		UserId = userId;
		ChangedOn = changedOn;
	    }
	}

	/// <summary>يتم إطلاق هذا الحدث عند محاولة وصول غير مصرّح للسطر.</summary>
	public class JournalDetailBranchPermissionDeniedEvent : DomainEventBase
	{
	    public JournalDetailBranchId Id { get; }
	    public int? UserId { get; }
	    public DateTime AttemptedOn { get; }
	    public JournalDetailBranchPermissionDeniedEvent(JournalDetailBranchId id, int? userId, DateTime attemptedOn)
	    {
		Id = id;
		UserId = userId;
		AttemptedOn = attemptedOn;
	    }
	}

	/// <summary>يتم إطلاق هذا الحدث عند محاولة تنفيذ عملية ممنوعة دومينيًا.</summary>
	public class JournalDetailBranchInvalidOperationEvent : DomainEventBase
	{
	    public JournalDetailBranchId Id { get; }
	    public string Operation { get; }
	    public int? UserId { get; }
	    public DateTime AttemptedOn { get; }
	    public JournalDetailBranchInvalidOperationEvent(JournalDetailBranchId id, string operation, int? userId, DateTime attemptedOn)
	    {
		Id = id;
		Operation = operation;
		UserId = userId;
		AttemptedOn = attemptedOn;
	    }
	}

	#endregion

	#region الاستثناءات الدومينية (Domain Exceptions) لموديل JournalDetailBranch

	/// <summary>يُرمى هذا الاستثناء عند محاولة إضافة سطر مكرر لنفس الفرع.</summary>
	public class JournalDetailBranchAlreadyExistsException : DomainException
	{
	    public JournalDetailBranchAlreadyExistsException(string message) : base(message) { }
	}

	/// <summary>يُرمى هذا الاستثناء عند محاولة الوصول لسطر غير موجود.</summary>
	public class JournalDetailBranchNotFoundException : DomainException
	{
	    public JournalDetailBranchNotFoundException(string message) : base(message) { }
	}

	/// <summary>يُرمى هذا الاستثناء عند محاولة عملية على سطر مقفل أو مرحل.</summary>
	public class JournalDetailBranchLockedException : DomainException
	{
	    public JournalDetailBranchLockedException(string message) : base(message) { }
	}

	/// <summary>يُرمى هذا الاستثناء عند محاولة الترحيل المالي بدون مراجعة.</summary>
	public class JournalDetailBranchReviewRequiredException : DomainException
	{
	    public JournalDetailBranchReviewRequiredException(string message) : base(message) { }
	}

	/// <summary>يُرمى هذا الاستثناء عند محاولة معالجة مالية بدون تدقيق أو اعتماد تدقيق.</summary>
	public class JournalDetailBranchAuditRequiredException : DomainException
	{
	    public JournalDetailBranchAuditRequiredException(string message) : base(message) { }
	}

	/// <summary>يُرمى هذا الاستثناء عند رفض تدقيق السطر.</summary>
	public class JournalDetailBranchAuditRejectedException : DomainException
	{
	    public JournalDetailBranchAuditRejectedException(string message) : base(message) { }
	}

	/// <summary>يُرمى هذا الاستثناء عند حصول خطأ في المعالجة المالية.</summary>
	public class JournalDetailBranchFinancialErrorException : DomainException
	{
	    public JournalDetailBranchFinancialErrorException(string message) : base(message) { }
	}

	/// <summary>يُرمى هذا الاستثناء عند وجود حالة غير منطقية للسطر.</summary>
	public class JournalDetailBranchInvalidStateException : DomainException
	{
	    public JournalDetailBranchInvalidStateException(string message) : base(message) { }
	}

	/// <summary>يُرمى هذا الاستثناء عند محاولة وصول غير مصرّح.</summary>
	public class JournalDetailBranchPermissionDeniedException : DomainException
	{
	    public JournalDetailBranchPermissionDeniedException(string message) : base(message) { }
	}

	/// <summary>يُرمى هذا الاستثناء عند محاولة حذف وله أبناء أو ارتباطات.</summary>
	public class JournalDetailBranchDeleteWithChildrenException : DomainException
	{
	    public JournalDetailBranchDeleteWithChildrenException(string message) : base(message) { }
	}

	/// <summary>يُرمى هذا الاستثناء عند محاولة التعامل مع فرع غير موجود بالنظام.</summary>
	public class JournalDetailBranchBranchNotFoundException : DomainException
	{
	    public JournalDetailBranchBranchNotFoundException(string message) : base(message) { }
	}

	/// <summary>يُرمى هذا الاستثناء عند محاولة التعامل مع تاريخ ترحيل مغلق أو فترة مغلقة.</summary>
	public class JournalDetailBranchPostingDateClosedException : DomainException
	{
	    public JournalDetailBranchPostingDateClosedException(string message) : base(message) { }
	}

	/// <summary>يُرمى هذا الاستثناء عند محاولة وصول مستخدم غير مصرّح.</summary>
	public class JournalDetailBranchUserNotAuthorizedException : DomainException
	{
	    public JournalDetailBranchUserNotAuthorizedException(string message) : base(message) { }
	}

	/// <summary>يُرمى هذا الاستثناء عند تجاوز المبلغ المسموح به أو غير منطقي.</summary>
	public class JournalDetailBranchAmountOutOfRangeException : DomainException
	{
	    public JournalDetailBranchAmountOutOfRangeException(string message) : base(message) { }
	}

	/// <summary>يُرمى هذا الاستثناء عند عدم وجود مستند مرجعي مرتبط.</summary>
	public class JournalDetailBranchReferenceNotFoundException : DomainException
	{
	    public JournalDetailBranchReferenceNotFoundException(string message) : base(message) { }
	}

	/// <summary>يُرمى هذا الاستثناء عند تكرار الرقم التسلسلي لنفس القيد/الفرع.</summary>
	public class JournalDetailBranchDuplicatedSerialException : DomainException
	{
	    public JournalDetailBranchDuplicatedSerialException(string message) : base(message) { }
	}

	#endregion


        #region البناء
        private JournalDetailBranch() { }
        // أضف هنا Constructor كامل بجميع الحقول حسب الحاجة
        #endregion
    }
}
