using ERP_Pro.Domain.Inventory.ValueObjects;

namespace ERP_Pro.Domain.Inventory
{
    /// <summary>
    /// يمثل سجل تاريخي لتغيرات سعر الصنف بكامل الحقول والعلاقات.
    /// </summary>
    public class ItemPriceHistory
    {
        /// <summary>المعرف الفريد للسجل التاريخي.</summary>
        public ItemPriceHistoryId AuditNo { get; private set; }
        /// <summary>نوع السجل (إضافة/تعديل).</summary>
        public int? AuditType { get; private set; }
        /// <summary>رقم مستوى التسعير (علاقة مع مستويات التسعير).</summary>
        public int LevelNo { get; private set; }
        /// <summary>كود الصنف (علاقة مع الأصناف).</summary>
        public string ItemCode { get; private set; }
        /// <summary>وحدة الصنف (علاقة مع وحدات القياس).</summary>
        public string? ItemUnit { get; private set; }
        /// <summary>حجم العبوة.</summary>
        public decimal? PackSize { get; private set; }
        /// <summary>كود المستودع (علاقة مع المستودعات).</summary>
        public long? WarehouseCode { get; private set; }
        /// <summary>الكمية من.</summary>
        public decimal? FromQty { get; private set; }
        /// <summary>الكمية إلى.</summary>
        public decimal? ToQty { get; private set; }
        /// <summary>سعر الصنف الجديد.</summary>
        public decimal ItemPrice { get; private set; }
        /// <summary>السعر السابق للصنف.</summary>
        public decimal? PrevItemPrice { get; private set; }
        /// <summary>المستخدم الذي أضاف السطر (علاقة مع المستخدمين).</summary>
        public int? AddedByUserId { get; private set; }
        /// <summary>تاريخ الإضافة.</summary>
        public DateTime? AddedDate { get; private set; }
        /// <summary>المستخدم الذي عدل السطر (علاقة مع المستخدمين).</summary>
        public int? UpdatedByUserId { get; private set; }
        /// <summary>تاريخ آخر تعديل.</summary>
        public DateTime? UpdatedDate { get; private set; }
        /// <summary>المستخدم الذي راجع التعديل (علاقة مع المستخدمين).</summary>
        public int? AuditUserId { get; private set; }
        /// <summary>تاريخ التدقيق.</summary>
        public DateTime? AuditDate { get; private set; }
        /// <summary>رقم المستند المرتبط بالتغيير (علاقة مع مستندات الحركة).</summary>
        public long? DocNo { get; private set; }
        /// <summary>تاريخ المستند المرتبط بالتغيير.</summary>
        public DateTime? DocDate { get; private set; }
        /// <summary>رقم الفرع (علاقة مع الفروع).</summary>
        public int BranchNo { get; private set; }
        /// <summary>عدد مرات التعديل على السطر.</summary>
        public long? UpdateCount { get; private set; }
        /// <summary>أولوية التقرير.</summary>
        public int? ReportPriority { get; private set; }
        /// <summary>اسم الجهاز عند الإضافة.</summary>
        public string? AddedTerminal { get; private set; }
        /// <summary>اسم الجهاز عند التعديل.</summary>
        public string? UpdatedTerminal { get; private set; }
        /// <summary>تاريخ انتهاء السعر.</summary>
        public DateTime? ExpireDate { get; private set; }
        /// <summary>رقم الدفعة (علاقة مع دفعات الأصناف).</summary>
        public string BatchNo { get; private set; }
        /// <summary>الحد الأدنى للسعر الجديد.</summary>
        public decimal? MinItemPrice { get; private set; }
        /// <summary>الحد الأعلى للسعر الجديد.</summary>
        public decimal? MaxItemPrice { get; private set; }
        /// <summary>الحد الأعلى السابق للسعر.</summary>
        public decimal? PrevMaxItemPrice { get; private set; }
        /// <summary>الحد الأدنى السابق للسعر.</summary>
        public decimal? PrevMinItemPrice { get; private set; }

        // العلاقات الدومينية (Navigation Properties)
        // public virtual PricingLevel? PricingLevel { get; private set; } // مستوى التسعير
        // public virtual Item? Item { get; private set; } // الصنف
        // public virtual Measurement? Measurement { get; private set; } // وحدة القياس
        // public virtual Warehouse? Warehouse { get; private set; } // المستودع
        // public virtual ItemBatch? ItemBatch { get; private set; } // الدفعة
        // public virtual User? AddedByUser { get; private set; } // المستخدم الذي أضاف
        // public virtual User? UpdatedByUser { get; private set; } // المستخدم الذي عدل
        // public virtual User? AuditUser { get; private set; } // المستخدم الذي راجع
        // public virtual Branch? Branch { get; private set; } // الفرع
        // public virtual MovementDocument? MovementDocument { get; private set; } // مستند الحركة

        private ItemPriceHistory() { }

        public ItemPriceHistory(
            ItemPriceHistoryId auditNo,
            int levelNo,
            string itemCode,
            decimal itemPrice,
            int branchNo,
            string batchNo)
        {
            AuditNo = auditNo;
            LevelNo = levelNo;
            ItemCode = itemCode;
            ItemPrice = itemPrice;
            BranchNo = branchNo;
            BatchNo = batchNo;
        }
    }
}