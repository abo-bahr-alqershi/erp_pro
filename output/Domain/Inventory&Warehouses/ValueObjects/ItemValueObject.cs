using System;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// كائن القيمة الدلالية للصنف (Item)
    /// يحتوي على جميع خصائص الصنف كما في الجدول.
    /// </summary>
    public record ItemValueObject
    {
        /// <summary>كود الصنف الفريد.</summary>
        public string ItemCode { get; init; } = string.Empty;
        /// <summary>اسم الصنف بالعربي.</summary>
        public string ItemName { get; init; } = string.Empty;
        /// <summary>اسم الصنف بالإنجليزي.</summary>
        public string? ItemEName { get; init; }
        /// <summary>كود مجموعة الصنف.</summary>
        public string GroupCode { get; init; } = string.Empty;
        /// <summary>كود تصنيف المجموعة التابع لها الصنف.</summary>
        public string? GroupClassCode { get; init; }
        /// <summary>كود المدير أو المسؤول عن الصنف.</summary>
        public string? ManagerCode { get; init; }
        /// <summary>كود المجموعة الفرعية.</summary>
        public string? SubGroupCode { get; init; }
        /// <summary>حجم الصنف (رقمي).</summary>
        public decimal? ItemSize { get; init; }
        /// <summary>نوع الصنف (خامة، منتج نهائي...).</summary>
        public int? ItemType { get; init; }
        /// <summary>تكلفة الشراء الأساسية.</summary>
        public decimal? PrimaryCost { get; init; }
    }
}
