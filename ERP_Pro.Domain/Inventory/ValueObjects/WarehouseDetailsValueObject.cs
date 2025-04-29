using System;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// كائن القيمة الدلالية لبيانات المستودع (WarehouseDetails)
    /// يحتوي على جميع خصائص المستودع كما في الجدول.
    /// </summary>
    public record WarehouseDetailsValueObject
    {
        /// <summary>الرقم التعريفي للمستودع.</summary>
        public long WarehouseCode { get; init; }
        /// <summary>اسم المستودع بالعربي.</summary>
        public string WarehouseName { get; init; } = string.Empty;
        /// <summary>اسم المستودع بالإنجليزي.</summary>
        public string? WarehouseEName { get; init; }
        /// <summary>العنوان الجغرافي أو الإداري للمستودع.</summary>
        public string? Location { get; init; }
        /// <summary>رقم هاتف المستودع.</summary>
        public string? TelNo { get; init; }
        /// <summary>علم يحدد إن كان المستودع غير نشط (1=نعم).</summary>
        public bool? Inactive { get; init; }
        /// <summary>اسم أمين المستودع.</summary>
        public string? WarehouseKeeper { get; init; }
        /// <summary>كود مجموعة المستودعات التابع لها المستودع.</summary>
        public long? WarehouseGroupCode { get; init; }
        /// <summary>نوع المستودع (رئيسي/فرعي/خدمي).</summary>
        public int? WarehouseType { get; init; }
        /// <summary>استخدام إذن التخزين (1=يستخدم).</summary>
        public bool? UseBOE { get; init; }
        /// <summary>يمنع البيع من المستودع (1=نعم).</summary>
        public bool? NoSale { get; init; }
        /// <summary>التحقق من الكمية المتاحة قبل العمليات.</summary>
        public bool? CheckAvailableQty { get; init; }
        /// <summary>كود الحساب المستخدم في التحويلات.</summary>
        public string? TransferAccountCode { get; init; }
        /// <summary>مركز التكلفة الافتراضي للمستودع.</summary>
        public string? CostCenterCode { get; init; }
        /// <summary>رقم الدولة التي يتبع لها المستودع.</summary>
        public int? CountryNo { get; init; }
        /// <summary>إحداثيات GPS الخاصة بالموقع.</summary>
        public string? GPS { get; init; }
        /// <summary>رقم المحافظة أو المنطقة.</summary>
        public long? ProvinceNo { get; init; }
        /// <summary>رقم المدينة.</summary>
        public long? CityNo { get; init; }
        /// <summary>رقم المنطقة أو الحي.</summary>
        public long? RegionCode { get; init; }
        /// <summary>رقم تسلسلي داخلي للمستودع.</summary>
        public int? WarehouseSerial { get; init; }
        /// <summary>رقم الفرع المتصل بالمستودع.</summary>
        public int? ConnectedBranchNo { get; init; }
        /// <summary>رقم النشاط المرتبط بالمستودع.</summary>
        public int? ActivityNo { get; init; }
        /// <summary>كود المستودع الرئيسي (إذا كان فرعيًا).</summary>
        public long? MainWarehouseCode { get; init; }
        /// <summary>اسم الربط بقاعدة بيانات أخرى (إن وجد).</summary>
        public string? DBLinkName { get; init; }
        /// <summary>استقبال التحويلات تلقائيا (1=نعم).</summary>
        public bool? UseAutoRecWHTrans { get; init; }
        /// <summary>مستوى التسعير الافتراضي للمستودع.</summary>
        public int? PriceLevel { get; init; }
        /// <summary>علم يستخدم إن كان المستودع خدمي.</summary>
        public bool? ServiceFlag { get; init; }
        /// <summary>رقم المستخدم الذي أضاف السطر.</summary>
        public int? AddedByUserId { get; init; }
        /// <summary>تاريخ الإضافة.</summary>
        public DateTime? AddedDate { get; init; }
        /// <summary>رقم المستخدم الذي عدل السطر.</summary>
        public int? UpdatedByUserId { get; init; }
        /// <summary>تاريخ آخر تعديل.</summary>
        public DateTime? UpdatedDate { get; init; }
        /// <summary>عدد مرات التعديل.</summary>
        public long? UpdateCount { get; init; }
        /// <summary>أولوية الظهور في التقارير.</summary>
        public long? ReportPriority { get; init; }
        /// <summary>اسم الجهاز عند الإضافة.</summary>
        public string? AddedTerminal { get; init; }
        /// <summary>اسم الجهاز عند التعديل.</summary>
        public string? UpdatedTerminal { get; init; }
        /// <summary>دائرة العرض للمستودع (إحداثيات).</summary>
        public string? Latitude { get; init; }
        /// <summary>خط الطول للمستودع (إحداثيات).</summary>
        public string? Longitude { get; init; }
        /// <summary>رقم الموقع العالمي للمستودع.</summary>
        public string? GLNCode { get; init; }
        /// <summary>العنوان المحلي بالتفصيل.</summary>
        public string? WarehouseAddress { get; init; }
        /// <summary>العنوان الأجنبي بالتفصيل.</summary>
        public string? WarehouseFAddress { get; init; }
        /// <summary>نوع عرض المستودع.</summary>
        public bool? ShowWarehouseType { get; init; }
        /// <summary>رقم المشروع المرتبط.</summary>
        public string? ProjectNo { get; init; }
        /// <summary>رقم النشاط (سلسلة).</summary>
        public string? ActivityNoStr { get; init; }
        /// <summary>وصف خاص للمستودع.</summary>
        public string? SODescription { get; init; }
        /// <summary>نوع أمر البيع الافتراضي للمستودع.</summary>
        public int? SOType { get; init; }
        /// <summary>رقم سلسلة المستودع.</summary>
        public int? SCNo { get; init; }
        /// <summary>رقم البنك الافتراضي للمستودع.</summary>
        public long? BankNo { get; init; }
        /// <summary>كود التقرير الخاص بالمستودع.</summary>
        public string? ReportCode { get; init; }
        /// <summary>رقم المحصل الافتراضي.</summary>
        public long? CollectorNo { get; init; }
        /// <summary>كود العميل الافتراضي.</summary>
        public string? CustomerCode { get; init; }
        /// <summary>نوع الحساب الضريبي الافتراضي.</summary>
        public int? CalcTypeNoTax { get; init; }
        /// <summary>كود مجموعة العملاء الافتراضية.</summary>
        public long? CustomerGroupCode { get; init; }
        /// <summary>نوع النظام المعروض.</summary>
        public int? ShowSystemType { get; init; }
        /// <summary>علم استخدام النسبية.</summary>
        public bool? UsePropFlag { get; init; }
        /// <summary>استخدام تحريك المواقع (bins).</summary>
        public bool? UseBinMovement { get; init; }
        /// <summary>الحد الأعلى لتكلفة المخزون.</summary>
        public decimal? WarehouseCostLimit { get; init; }
        /// <summary>مخصص للأصناف التالفة.</summary>
        public bool? ForDamagedItem { get; init; }
    }
}
