using System;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// كائن القيمة الدلالية لمجموعة الأصناف (ItemGroup)
    /// يحتوي على جميع خصائص مجموعة الأصناف كما في الجدول.
    /// </summary>
    public record ItemGroupValueObject
    {
        /// <summary>كود المجموعة الرئيسي للأصناف.</summary>
        public string GroupCode { get; init; } = string.Empty;
        /// <summary>اسم المجموعة بالعربي.</summary>
        public string GroupLName { get; init; } = string.Empty;
        /// <summary>اسم المجموعة بالإنجليزي.</summary>
        public string? GroupFName { get; init; }
        /// <summary>كود المجموعة الأب.</summary>
        public string? GroupCodeParent { get; init; }
        /// <summary>متأثر بالحركات (1=نعم).</summary>
        public bool? AffectedByTrans { get; init; }
        /// <summary>كود المجموعة المرتبط.</summary>
        public string? GCode { get; init; }
        /// <summary>رقم النشاط المرتبط.</summary>
        public int? ActivityNo { get; init; }
        /// <summary>النسبة الافتراضية للسعر من التكلفة الأساسية.</summary>
        public decimal? PricePercentFromPrimary { get; init; }
        /// <summary>المستخدم الذي أضاف السطر.</summary>
        public int? AddedByUserId { get; init; }
        /// <summary>تاريخ الإضافة.</summary>
        public DateTime? AddedDate { get; init; }
        /// <summary>المستخدم الذي عدل السطر.</summary>
        public int? UpdatedByUserId { get; init; }
        /// <summary>تاريخ آخر تعديل.</summary>
        public DateTime? UpdatedDate { get; init; }
        /// <summary>عدد مرات التعديل.</summary>
        public long? UpdateCount { get; init; }
        /// <summary>أولوية التقرير.</summary>
        public long? ReportPriority { get; init; }
        /// <summary>اسم الجهاز عند الإضافة.</summary>
        public string? AddedTerminal { get; init; }
        /// <summary>اسم الجهاز عند التعديل.</summary>
        public string? UpdatedTerminal { get; init; }
    }
}
