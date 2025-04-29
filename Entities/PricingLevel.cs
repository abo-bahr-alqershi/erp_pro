using ERP_Pro.Domain.Common;
using ERP_Pro.Domain.Inventory.ValueObjects;
using System;
using System.Collections.Generic;

namespace ERP_Pro.Domain.Inventory.Entities
{
    /// <summary>
    /// يمثل مستوى تسعير للأصناف في النظام
    /// </summary>
    public class PricingLevel : AggregateRoot<PricingLevelId>
    {
        /// <summary>
        /// رقم مستوى التسعير كـ ValueObject
        /// </summary>
        public PricingLevelNumber LevelNo { get; private set; }

        /// <summary>
        /// اسم المستوى بالعربي
        /// </summary>
        public string LevelAName { get; set; }

        /// <summary>
        /// اسم المستوى بالإنجليزي
        /// </summary>
        public string? LevelEName { get; set; }

        /// <summary>
        /// رمز العملة
        /// </summary>
        public string? CurrencyCode { get; set; }

        /// <summary>
        /// أقل مستوى
        /// </summary>
        public int? LevelLow { get; set; }

        /// <summary>
        /// أعلى مستوى
        /// </summary>
        public int? LevelHigh { get; set; }

        /// <summary>
        /// المستوى الافتراضي
        /// </summary>
        public int? LevelDefault { get; set; }

        /// <summary>
        /// نوع مستند الفاتورة المرتبط
        /// </summary>
        public int? BillDocType { get; set; }

        /// <summary>
        /// نسبة السعر من التكلفة
        /// </summary>
        public decimal? PercentPriceFromCost { get; set; }

        /// <summary>
        /// عدد الكسور العشرية المقبولة في السعر
        /// </summary>
        public int? DecNo { get; set; }

        /// <summary>
        /// نوع التكلفة (أساسي/نهائي)
        /// </summary>
        public int? CostType { get; set; }

        /// <summary>
        /// نسبة التكلفة
        /// </summary>
        public decimal? CostPercent { get; set; }

        /// <summary>
        /// رقم المستخدم الذي أضاف السطر
        /// </summary>
        public int? AddedByUserId { get; set; }

        /// <summary>
        /// تاريخ الإضافة
        /// </summary>
        public DateTime? AddedDate { get; set; }

        /// <summary>
        /// رقم المستخدم الذي عدل السطر
        /// </summary>
        public int? UpdatedByUserId { get; set; }

        /// <summary>
        /// تاريخ آخر تعديل
        /// </summary>
        public DateTime? UpdatedDate { get; set; }

        /// <summary>
        /// عدد مرات التعديل
        /// </summary>
        public int? UpdateCount { get; set; }

        /// <summary>
        /// أولوية التقرير
        /// </summary>
        public int? ReportPriority { get; set; }

        /// <summary>
        /// الجهاز عند الإضافة
        /// </summary>
        public string? AddedTerminal { get; set; }

        /// <summary>
        /// الجهاز عند التعديل
        /// </summary>
        public string? UpdatedTerminal { get; set; }

        /// <summary>
        /// علم التعطيل (1=معطل)
        /// </summary>
        public int? Inactive { get; set; }

        /// <summary>
        /// سبب التعطيل
        /// </summary>
        public string? InactiveReason { get; set; }

        /// <summary>
        /// تاريخ التعطيل
        /// </summary>
        public DateTime? InactiveDate { get; set; }

        /// <summary>
        /// المستخدم الذي عطل المستوى
        /// </summary>
        public int? InactiveUserId { get; set; }

        // العلاقات الدومينية (Navigation Properties)
        /// <summary>
        /// الأصناف المرتبطة بهذا المستوى
        /// </summary>
        public virtual ICollection<ItemPrice> ItemPrices { get; set; } = new List<ItemPrice>();

        private PricingLevel() : base(default!) { }
        public PricingLevel(PricingLevelId id, PricingLevelNumber levelNo, string levelAName)
            : base(id)
        {
            LevelNo = levelNo;
            LevelAName = levelAName;
        }
    }
}
