using System;
using System.Collections.Generic;
using Domain.Common;
using Accounting.Domain.Journals.Events;
using Accounting.Domain.Journals.Exceptions;

namespace Accounting.Domain.Journals
{
    /// <summary>
    /// تفاصيل القيد اليومي (DETAIL_JOURNAL_V)
    /// جميع الحقول والعلاقات والملحقات مضمنة دون أي نقص.
    /// </summary>
    public class JournalDetail : AggregateRoot<JournalDetailId>
    {
        /// <summary>معرف تفاصيل القيد (مركب من JVType, JDocNo, JSerial)</summary>
        public JournalDetailId Id { get; private set; }

        /// <summary>رقم نوع القيد المحاسبي</summary>
        public int JVType { get; private set; }

        /// <summary>رقم المستند المحاسبي</summary>
        public long JDocNo { get; private set; }

        /// <summary>الرقم التسلسلي للسطر</summary>
        public decimal? JSerial { get; private set; }

        /// <summary>كود الحساب</summary>
        public string AccountCode { get; private set; }

        /// <summary>كود تفاصيل الحساب</summary>
        public string AccountDtlCode { get; private set; }

        /// <summary>كود التفاصيل الفرعية للحساب</summary>
        public string AccountDtlSub { get; private set; }

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


	#region كامل العلاقات مع الشرح

	/// <summary>العلاقة مع القيد الرئيسي لهذا السطر.</summary>
	public virtual JournalMaster JournalMaster { get; private set; }

	/// <summary>العلاقة مع الحساب الرئيسي لهذا السطر المحاسبي.</summary>
	public virtual Account Account { get; private set; }

	/// <summary>العلاقة مع تفاصيل الحساب المرتبطة بالسطر.</summary>
	public virtual AccountDetail AccountDetail { get; private set; }

	/// <summary>العلاقة مع التفاصيل الفرعية للحساب لهذا السطر.</summary>
	public virtual AccountDetailSub AccountDetailSub { get; private set; }

	/// <summary>العلاقة مع نوع التفاصيل للحساب لهذا السطر.</summary>
	public virtual AccountDtlType AccountDtlTypeNavigation { get; private set; }

	/// <summary>العلاقة مع العملة المستخدمة في السطر.</summary>
	public virtual Currency Currency { get; private set; }

	/// <summary>العلاقة مع مركز التكلفة المرتبط بالسطر.</summary>
	public virtual CostCenter CostCenter { get; private set; }

	/// <summary>العلاقة مع المشروع المرتبط بالسطر.</summary>
	public virtual Project Project { get; private set; }

	/// <summary>العلاقة مع النشاط المرتبط بالسطر.</summary>
	public virtual Activity Activity { get; private set; }

	/// <summary>العلاقة مع العميل المرتبط بالسطر.</summary>
	public virtual Customer Customer { get; private set; }

	/// <summary>العلاقة مع المورد المرتبط بالسطر.</summary>
	public virtual Vendor Vendor { get; private set; }

	/// <summary>العلاقة مع التقرير المرتبط بالسطر.</summary>
	public virtual Report Report { get; private set; }

	/// <summary>العلاقة مع المحصل لهذا السطر.</summary>
	public virtual Collector Collector { get; private set; }

	/// <summary>العلاقة مع الاعتماد المستندي لهذا السطر.</summary>
	public virtual LC LC { get; private set; }

	/// <summary>العلاقة مع أمر التوريد أو الإصدار المرتبط بالسطر.</summary>
	public virtual GR GR { get; private set; }

	/// <summary>العلاقة مع الصندوق أو البنك لهذا السطر.</summary>
	public virtual CashBank CashBank { get; private set; }

	/// <summary>العلاقة مع السطر في القيد الرئيسي.</summary>
	public virtual Record Record { get; private set; }

	/// <summary>العلاقة مع السطر الترتيبي في القيد.</summary>
	public virtual Record RecordOrd { get; private set; }

	/// <summary>العلاقة مع نوع المستند المرجعي لهذا السطر.</summary>
	public virtual DocType DocTypeRefNavigation { get; private set; }

	/// <summary>العلاقة مع نوع القيد المرجعي لهذا السطر.</summary>
	public virtual DocType DocJVTypeRefNavigation { get; private set; }

	/// <summary>العلاقة مع المستند المرجعي لهذا السطر.</summary>
	public virtual ReferenceDocument DocNoRefNavigation { get; private set; }

	/// <summary>العلاقة مع الرقم التسلسلي للمستند المرجعي.</summary>
	public virtual ReferenceDocument DocSerRefNavigation { get; private set; }

	/// <summary>العلاقة مع الفاتورة المرتبطة بالسطر.</summary>
	public virtual Bill Bill { get; private set; }

	/// <summary>العلاقة مع أمين الصندوق لهذا السطر.</summary>
	public virtual Cashier Cashier { get; private set; }

	/// <summary>العلاقة مع العنصر لهذا السطر.</summary>
	public virtual Item Item { get; private set; }

	/// <summary>العلاقة مع أمر العمل لهذا السطر.</summary>
	public virtual WorkOrder WorkOrder { get; private set; }

	/// <summary>العلاقة مع العقد لهذا السطر.</summary>
	public virtual Contract Contract { get; private set; }

	/// <summary>العلاقة مع الشيك لهذا السطر.</summary>
	public virtual Cheque Cheque { get; private set; }

	/// <summary>العلاقة مع الإشعار أو الملاحظة لهذا السطر.</summary>
	public virtual Note NoteNavigation { get; private set; }

	/// <summary>العلاقة مع فرع المستند لهذا السطر.</summary>
	public virtual Branch DocBranch { get; private set; }

	/// <summary>العلاقة مع المستخدم الذي أضاف السطر.</summary>
	public virtual User AddedByUser { get; private set; }

	/// <summary>العلاقة مع المستخدم الذي عدل السطر.</summary>
	public virtual User UpdatedByUser { get; private set; }

	/// <summary>العلاقة مع الشركة لهذا السطر.</summary>
	public virtual Company Company { get; private set; }

	/// <summary>العلاقة مع الفرع لهذا السطر.</summary>
	public virtual Branch Branch { get; private set; }

	/// <summary>العلاقة مع مستخدم الفرع.</summary>
	public virtual BranchUser BranchUserNavigation { get; private set; }

	/// <summary>العلاقة مع نوع الحساب الضريبي المستخدم في السطر.</summary>
	public virtual TaxType CalcTypeNoTaxNavigation { get; private set; }

	/// <summary>العلاقة مع مستند الموارد البشرية المرتبط بالسطر.</summary>
	public virtual HrsDocument HrsDocTypeRefNavigation { get; private set; }

	/// <summary>العلاقة مع الرقم التسلسلي لمستند الموارد البشرية.</summary>
	public virtual HrsDocument HrsDocSerRefNavigation { get; private set; }

	/// <summary>العلاقة مع رقم مستند الموارد البشرية.</summary>
	public virtual HrsDocument HrsDocNoRefNavigation { get; private set; }

	/// <summary>جميع الأقساط المرتبطة بهذا السطر.</summary>
	public virtual ICollection<JournalDetailInstallment> Installments { get; private set; }

	/// <summary>جميع المرفقات المرتبطة بهذا السطر.</summary>
	public virtual ICollection<JournalDetailAttachment> Attachments { get; private set; }

	#endregion

	#region جميع الأحداث (Domain Events) مع الشرح

	/// <summary>يتم إطلاق هذا الحدث عند إنشاء تفاصيل قيد جديد.</summary>
	public void RaiseCreated(int? userId) =>
	    AddDomainEvent(new JournalDetailCreatedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند تعديل تفاصيل القيد.</summary>
	public void RaiseUpdated(int? userId) =>
	    AddDomainEvent(new JournalDetailUpdatedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند حذف تفاصيل القيد.</summary>
	public void RaiseDeleted(int? userId) =>
	    AddDomainEvent(new JournalDetailDeletedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند حدوث تغيير يستوجب التدقيق على السطر.</summary>
	public void RaiseChangedAudit(string operation, int? userId) =>
	    AddDomainEvent(new JournalDetailChangedAuditEvent(this.Id, operation, userId, DateTime.UtcNow, null, null));

	/// <summary>يتم إطلاق هذا الحدث عند اعتماد السطر من جهة مراجعة أو إدارة.</summary>
	public void RaiseApproved(int? userId) =>
	    AddDomainEvent(new JournalDetailApprovedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند رفض السطر من جهة اعتماد.</summary>
	public void RaiseRejected(int? userId) =>
	    AddDomainEvent(new JournalDetailRejectedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند قفل السطر بسبب الإغلاق المالي أو الإجراء الإداري.</summary>
	public void RaiseLocked(int? userId) =>
	    AddDomainEvent(new JournalDetailLockedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند فتح السطر بعد القفل.</summary>
	public void RaiseUnlocked(int? userId) =>
	    AddDomainEvent(new JournalDetailUnlockedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند ترحيل السطر للمحاسبة أو الدفاتر.</summary>
	public void RaisePosted(int? userId) =>
	    AddDomainEvent(new JournalDetailPostedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند إلغاء الترحيل للسطر.</summary>
	public void RaiseUnposted(int? userId) =>
	    AddDomainEvent(new JournalDetailUnpostedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند التأكيد النهائي للسطر.</summary>
	public void RaiseConfirmed(int? userId) =>
	    AddDomainEvent(new JournalDetailConfirmedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند إلغاء التأكيد النهائي للسطر.</summary>
	public void RaiseUnconfirmed(int? userId) =>
	    AddDomainEvent(new JournalDetailUnconfirmedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند تغيير حالة الأقساط المرتبطة بالسطر.</summary>
	public void RaiseInstallmentChanged(string action, int? userId) =>
	    AddDomainEvent(new JournalDetailInstallmentChangedEvent(this.Id, action, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند احتساب الضريبة للسطر.</summary>
	public void RaiseTaxCalculated(int? userId) =>
	    AddDomainEvent(new JournalDetailTaxCalculatedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند فشل احتساب الضريبة للسطر.</summary>
	public void RaiseTaxError(string message, int? userId) =>
	    AddDomainEvent(new JournalDetailTaxErrorEvent(this.Id, message, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند اكتشاف فرق عملة في السطر.</summary>
	public void RaiseCurrencyDifferenceDetected(decimal diff, int? userId) =>
	    AddDomainEvent(new JournalDetailCurrencyDifferenceDetectedEvent(this.Id, diff, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند تسوية فرق العملة في السطر.</summary>
	public void RaiseCurrencyDifferenceSettled(decimal diff, int? userId) =>
	    AddDomainEvent(new JournalDetailCurrencyDifferenceSettledEvent(this.Id, diff, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند تخصيص مركز تكلفة للسطر.</summary>
	public void RaiseCostCenterAllocated(int? userId) =>
	    AddDomainEvent(new JournalDetailCostCenterAllocatedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند ربط السطر بمشروع.</summary>
	public void RaiseProjectLinked(int? userId) =>
	    AddDomainEvent(new JournalDetailProjectLinkedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند ربط السطر بنشاط.</summary>
	public void RaiseActivityLinked(int? userId) =>
	    AddDomainEvent(new JournalDetailActivityLinkedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند ربط السطر بمستند مرجعي.</summary>
	public void RaiseReferenceLinked(int? userId) =>
	    AddDomainEvent(new JournalDetailReferenceLinkedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند ربط السطر بشيك.</summary>
	public void RaiseChequeLinked(int? userId) =>
	    AddDomainEvent(new JournalDetailChequeLinkedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند ربط السطر بعميل.</summary>
	public void RaiseCustomerLinked(int? userId) =>
	    AddDomainEvent(new JournalDetailCustomerLinkedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند ربط السطر بمورد.</summary>
	public void RaiseVendorLinked(int? userId) =>
	    AddDomainEvent(new JournalDetailVendorLinkedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند عكس السطر أو تنفيذ عملية عكسية.</summary>
	public void RaiseReversed(int? userId) =>
	    AddDomainEvent(new JournalDetailReversedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند قراءة السطر من مستخدم معين.</summary>
	public void RaiseAccessed(int? userId) =>
	    AddDomainEvent(new JournalDetailAccessedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند محاولة وصول غير مصرّح للسطر.</summary>
	public void RaisePermissionDenied(int? userId) =>
	    AddDomainEvent(new JournalDetailPermissionDeniedEvent(this.Id, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند تغيير حقل حساس (مثل العملة أو الحساب) في السطر.</summary>
	public void RaiseFieldChanged(string fieldName, object oldValue, object newValue, int? userId) =>
	    AddDomainEvent(new JournalDetailFieldChangedEvent(this.Id, fieldName, oldValue, newValue, DateTime.UtcNow, userId));

	/// <summary>يتم إطلاق هذا الحدث عند محاولة تنفيذ عملية غير مسموحة على السطر.</summary>
	public void RaiseInvalidOperation(string operation, int? userId) =>
	    AddDomainEvent(new JournalDetailInvalidOperationEvent(this.Id, operation, DateTime.UtcNow, userId));

	#endregion

	#region جميع الاستثناءات (Domain Exceptions) مع الشرح

	/// <summary>يُرمى هذا الاستثناء عند محاولة إضافة سطر قيد مكرر.</summary>
	public void GuardAlreadyExists() =>
	    throw new JournalDetailAlreadyExistsException("تفاصيل القيد موجودة مسبقاً");

	/// <summary>يُرمى هذا الاستثناء في حال عدم العثور على تفاصيل القيد.</summary>
	public void GuardNotFound() =>
	    throw new JournalDetailNotFoundException("تفاصيل القيد غير موجودة");

	/// <summary>يُرمى هذا الاستثناء عند وجود تعارض في الأقساط المرتبطة بالسطر.</summary>
	public void GuardInstallmentConflict() =>
	    throw new JournalDetailInstallmentConflictException("تعارض في الأقساط المرتبطة بالسطر");

	/// <summary>يُرمى هذا الاستثناء عند ارتباط السطر بكيانات أخرى تمنع حذفه أو تعديله.</summary>
	public void GuardInUse() =>
	    throw new JournalDetailInUseException("تفاصيل القيد مرتبطة بكيانات أخرى");

	/// <summary>يُرمى هذا الاستثناء عند وجود قيود تمنع الحذف.</summary>
	public void GuardForbiddenDelete() =>
	    throw new ForbiddenJournalDetailDeleteException("غير مسموح حذف تفاصيل القيد");

	/// <summary>يُرمى هذا الاستثناء عند وجود حالة غير صحيحة للسطر.</summary>
	public void GuardInvalidState() =>
	    throw new InvalidJournalDetailStateException("حالة تفاصيل القيد غير صحيحة");

	/// <summary>يُرمى هذا الاستثناء عند محاولة التعامل مع فترة مالية مغلقة.</summary>
	public void GuardPostingDateClosed() =>
	    throw new JournalDetailPostingDateClosedException("تم الإغلاق على الفترة المالية");

	/// <summary>يُرمى هذا الاستثناء عند محاولة التعامل مع حساب غير نشط.</summary>
	public void GuardAccountInactive() =>
	    throw new JournalDetailAccountInactiveException("الحساب غير نشط");

	/// <summary>يُرمى هذا الاستثناء عند وجود تعارض في العملة.</summary>
	public void GuardCurrencyMismatch() =>
	    throw new JournalDetailCurrencyMismatchException("تعارض في العملة");

	/// <summary>يُرمى هذا الاستثناء عند غياب مركز التكلفة المطلوب.</summary>
	public void GuardCostCenterRequired() =>
	    throw new JournalDetailCostCenterRequiredException("مركز التكلفة مطلوب");

	/// <summary>يُرمى هذا الاستثناء عند غياب المشروع المطلوب.</summary>
	public void GuardProjectRequired() =>
	    throw new JournalDetailProjectRequiredException("المشروع مطلوب");

	/// <summary>يُرمى هذا الاستثناء عند تجاوز المبلغ للحدود المسموح بها.</summary>
	public void GuardAmountOutOfRange() =>
	    throw new JournalDetailAmountOutOfRangeException("المبلغ خارج الحدود المسموح بها");

	/// <summary>يُرمى هذا الاستثناء عند عدم وجود المستند المرجعي.</summary>
	public void GuardReferenceNotFound() =>
	    throw new JournalDetailReferenceNotFoundException("المستند المرجعي غير موجود");

	/// <summary>يُرمى هذا الاستثناء عند تكرار الرقم التسلسلي في نفس القيد.</summary>
	public void GuardDuplicatedSerial() =>
	    throw new JournalDetailDuplicatedSerialException("تكرار الرقم التسلسلي");

	/// <summary>يُرمى هذا الاستثناء عند محاولة وصول مستخدم غير مصرّح.</summary>
	public void GuardUserNotAuthorized() =>
	    throw new JournalDetailUserNotAuthorizedException("المستخدم غير مصرح له");

	/// <summary>يُرمى هذا الاستثناء عند وجود خطأ في احتساب الضريبة.</summary>
	public void GuardTaxCalculation() =>
	    throw new JournalDetailTaxCalculationException("خطأ في احتساب الضريبة");

	/// <summary>يُرمى هذا الاستثناء عند وجود حالة غير مناسبة للشيك.</summary>
	public void GuardChequeStatusInvalid() =>
	    throw new JournalDetailChequeStatusInvalidException("حالة الشيك غير مناسبة");

	/// <summary>يُرمى هذا الاستثناء عند محاولة التعديل أو الحذف لسطر مقفل.</summary>
	public void GuardLocked() =>
	    throw new JournalDetailLockedException("السطر مقفل ولا يمكن تعديله");

	/// <summary>يُرمى هذا الاستثناء عند محاولة عكس سطر لا يسمح بعكسه.</summary>
	public void GuardCannotReverse() =>
	    throw new JournalDetailCannotReverseException("لا يمكن عمل عكس لهذا السطر");

	/// <summary>يُرمى هذا الاستثناء عند الحاجة لاعتماد السطر قبل الترحيل.</summary>
	public void GuardApprovalRequired() =>
	    throw new JournalDetailApprovalRequiredException("يجب اعتماد السطر قبل الترحيل");

	/// <summary>يُرمى هذا الاستثناء عند تجاوز الحد الأقصى للتعديلات المسموح بها.</summary>
	public void GuardMaxUpdateExceeded() =>
	    throw new JournalDetailMaxUpdateExceededException("تجاوز الحد الأقصى للتعديلات");

	/// <summary>يُرمى هذا الاستثناء عند محاولة حذف وله أبناء أو ارتباطات.</summary>
	public void GuardDeleteWithChildren() =>
	    throw new JournalDetailDeleteWithChildrenException("لا يمكن حذف وله أبناء أو ارتباطات");

	#endregion


}
