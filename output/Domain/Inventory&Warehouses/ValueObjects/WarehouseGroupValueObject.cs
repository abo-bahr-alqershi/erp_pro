using System;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// كائن القيمة الدلالية لمجموعة المستودعات (WarehouseGroup)
    /// يحتوي على جميع خصائص مجموعة المستودعات كما في الجدول.
    /// </summary>
    public record WarehouseGroupValueObject
    {
        /// <summary>رقم مجموعة المستودعات.</summary>
        public long WarehouseGroupCode { get; init; }
        /// <summary>اسم المجموعة بالعربي.</summary>
        public string WarehouseGroupName { get; init; } = string.Empty;
        /// <summary>اسم المجموعة بالإنجليزي.</summary>
        public string? WarehouseGroupEName { get; init; }
        /// <summary>رقم المستخدم الذي أضاف المجموعة.</summary>
        public int? AddedByUserId { get; init; }
        /// <summary>تاريخ الإضافة.</summary>
        public DateTime? AddedDate { get; init; }
        /// <summary>رقم المستخدم الذي عدل المجموعة.</summary>
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
