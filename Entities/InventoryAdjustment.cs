using System;
using System.Collections.Generic;
using ERP_Pro.Domain.Inventory.Enums;
using ERP_Pro.Domain.Accounting.ValueObjects;
using ERP_Pro.Domain.Common.ValueObjects;

namespace ERP_Pro.Domain.Inventory.Entities
{
    /// <summary>
    /// كيان تسوية المخزون (InventoryAdjustment)
    /// جميع الحقول والعلاقات مضمنة بالكامل مع تعليقات توضيحية.
    /// </summary>
    public class InventoryAdjustment
    {
        /// <summary>المعرف الفريد للتسوية (رقم المستند).</summary>
        public long DocNo { get; set; }

        /// <summary>نوع التسوية (جرد دوري، مفاجئ، ...).</summary>
        public int AdjustType { get; set; }

        /// <summary>نوع المخزون (رئيسي/فرعي/خدمي).</summary>
        public StockType? StockType { get; set; }

        /// <summary>وصف التسوية أو ملاحظات إضافية.</summary>
        public string? StockDesc { get; set; }

        /// <summary>كود الحساب المحاسبي المرتبط بالتسوية.</summary>
        public ERP_Pro.Domain.Accounting.ValueObjects.AccountCode? AccountCode { get; set; }

        /// <summary>كود تفاصيل الحساب (إن وجد).</summary>
        public string? AccountDtlCode { get; set; }

        /// <summary>نوع تفاصيل الحساب (إن وجد).</summary>
        public int? AccountDtlType { get; set; }

        /// <summary>رمز العملة المستخدمة في التسوية.</summary>
        public ERP_Pro.Domain.Accounting.ValueObjects.CurrencyCode? CurrencyCode { get; set; }

        /// <summary>سعر صرف التسوية.</summary>
        public decimal? StockAccRate { get; set; }

        /// <summary>مركز التكلفة المرتبط بالتسوية.</summary>
        public CostCenterCode? CostCenterCode { get; set; }

        /// <summary>رقم المشروع المرتبط بالتسوية.</summary>
        public ProjectNo? ProjectNo { get; set; }

        /// <summary>رقم النشاط المرتبط بالتسوية.</summary>
        public ActivityNo? ActivityNo { get; set; }

        /// <summary>كود المورد (إن وجد).</summary>
        public VendorCode? VendorCode { get; set; }

        /// <summary>رقم الشركة المالكة للتسوية.</summary>
        public int CompanyNo { get; set; }

        /// <summary>رقم الفرع الذي تمت فيه التسوية.</summary>
        public int BranchNo { get; set; }

        /// <summary>السنة المالية للفرع.</summary>
        public int? BranchYear { get; set; }

        /// <summary>مستخدم الفرع الذي أجرى التسوية.</summary>
        public int? BranchUser { get; set; }

        /// <summary>هل تم ترحيل التسوية (true=تم الترحيل).</summary>
        public bool? StockPost { get; set; }

        /// <summary>أولوية التقرير لهذه التسوية.</summary>
        public long? ReportPriority { get; set; }

        /// <summary>هل التسوية معلقة (true=معلقة).</summary>
        public bool? Hung { get; set; }

        /// <summary>نوع التعبئة (يدوي/آلي).</summary>
        public FillType? FillType { get; set; }

        /// <summary>رقم الفرع الخاص بالمستند (إن وجد).</summary>
        public int? DocBranchNo { get; set; }

        /// <summary>مرجع تدقيق إضافي (إن وجد).</summary>
        public int? AuditRef { get; set; }

        /// <summary>وصف مرجع التدقيق (إن وجد).</summary>
        public string? AuditRefDesc { get; set; }

        /// <summary>مستخدم مرجع التدقيق (إن وجد).</summary>
        public int? AuditRefUserId { get; set; }

        /// <summary>تاريخ مرجع التدقيق (إن وجد).</summary>
        public DateTime? AuditRefDate { get; set; }

        /// <summary>رقم المستخدم الذي أضاف التسوية.</summary>
        public int? AddedByUserId { get; set; }

        /// <summary>تاريخ إضافة التسوية.</summary>
        public DateTime? AddedDate { get; set; }

        /// <summary>رقم المستخدم الذي عدل التسوية.</summary>
        public int? UpdatedByUserId { get; set; }

        /// <summary>تاريخ آخر تعديل للتسوية.</summary>
        public DateTime? UpdatedDate { get; set; }

        /// <summary>عدد مرات تعديل التسوية.</summary>
        public long? UpdateCount { get; set; }

        /// <summary>رقم المستخدم الذي رحل التسوية.</summary>
        public int? PostUserId { get; set; }

        /// <summary>تاريخ ترحيل التسوية.</summary>
        public DateTime? PostDate { get; set; }

        /// <summary>رقم المستخدم الذي ألغى الترحيل.</summary>
        public int? UnpostUserId { get; set; }

        /// <summary>تاريخ إلغاء الترحيل.</summary>
        public DateTime? UnpostDate { get; set; }

        /// <summary>اسم الجهاز عند إضافة التسوية.</summary>
        public string? AddedTerminal { get; set; }

        /// <summary>اسم الجهاز عند تعديل التسوية.</summary>
        public string? UpdatedTerminal { get; set; }

        // العلاقات (Navigation Properties)

        /// <summary>العلاقة مع الشركة المالكة.</summary>
        public virtual Company Company { get; set; }

        /// <summary>العلاقة مع الفرع.</summary>
        public virtual Branch Branch { get; set; }

        /// <summary>العلاقة مع مستخدم الفرع.</summary>
        public virtual BranchUser? BranchUserNavigation { get; set; }

        /// <summary>العلاقة مع الحساب المحاسبي.</summary>
        public virtual Account? Account { get; set; }

        /// <summary>العلاقة مع تفاصيل الحساب.</summary>
        public virtual AccountDetail? AccountDetail { get; set; }

        /// <summary>العلاقة مع مركز التكلفة.</summary>
        public virtual CostCenter? CostCenter { get; set; }

        /// <summary>العلاقة مع المشروع.</summary>
        public virtual Project? Project { get; set; }

        /// <summary>العلاقة مع النشاط.</summary>
        public virtual Activity? Activity { get; set; }

        /// <summary>العلاقة مع المورد.</summary>
        public virtual Vendor? Vendor { get; set; }

        /// <summary>العلاقة مع المستخدم الذي أضاف التسوية.</summary>
        public virtual User? AddedByUser { get; set; }

        /// <summary>العلاقة مع المستخدم الذي عدل التسوية.</summary>
        public virtual User? UpdatedByUser { get; set; }

        /// <summary>العلاقة مع المستخدم الذي رحل التسوية.</summary>
        public virtual User? PostUser { get; set; }

        /// <summary>العلاقة مع المستخدم الذي ألغى الترحيل.</summary>
        public virtual User? UnpostUser { get; set; }

        /// <summary>العلاقة مع تفاصيل التسوية (InventoryAdjustmentDetail).</summary>
        public virtual ICollection<InventoryAdjustmentDetail> Details { get; set; } = new List<InventoryAdjustmentDetail>();
    }
}
