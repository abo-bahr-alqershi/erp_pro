using ERP_Pro.Domain.Common;
using ERP_Pro.Domain.Inventory.ValueObjects;

namespace ERP_Pro.Domain.Inventory.Entities
{
    /// <summary>
    /// يمثل حركة صنف في النظام (إدخال، إخراج، تحويل ...)
    /// </summary>
    public class ItemMovement : AggregateRoot<ItemMovementId>
    {
        /// <summary>
        /// رقم الشركة
        /// </summary>
        public int CompanyNo { get; set; }

        /// <summary>
        /// رقم الفرع
        /// </summary>
        public int BranchNo { get; set; }

        /// <summary>
        /// السنة المالية للفرع
        /// </summary>
        public int? BranchYear { get; set; }

        /// <summary>
        /// مستخدم الفرع
        /// </summary>
        public int? BranchUser { get; set; }

        /// <summary>
        /// نوع المستند (فاتورة، مرتجع، تحويل ...)
        /// </summary>
        public int DocType { get; set; }

        /// <summary>
        /// رقم المستند الرئيسي للحركة
        /// </summary>
        public long DocNo { get; set; }

        /// <summary>
        /// الرقم التسلسلي للمستند
        /// </summary>
        public long DocSerial { get; set; }

        /// <summary>
        /// تسلسل السطر بالمستند
        /// </summary>
        public long DocSequence { get; set; }

        /// <summary>
        /// كود الصنف
        /// </summary>
        public string ItemCode { get; set; }

        /// <summary>
        /// وحدة الصنف
        /// </summary>
        public string ItemUnit { get; set; }

        /// <summary>
        /// حجم العبوة
        /// </summary>
        public decimal PackSize { get; set; }

        /// <summary>
        /// الكمية المنقولة أو المدخلة أو المخرجة
        /// </summary>
        public decimal? ItemQty { get; set; }

        /// <summary>
        /// كمية العبوة
        /// </summary>
        public decimal? PackQty { get; set; }

        /// <summary>
        /// كمية مجانية ضمن الحركة
        /// </summary>
        public decimal? FreeQty { get; set; }

        /// <summary>
        /// كمية مجانية جزئية
        /// </summary>
        public decimal? PartialFreeQty { get; set; }

        /// <summary>
        /// تاريخ الحركة
        /// </summary>
        public DateTime ItemDate { get; set; }

        /// <summary>
        /// تكلفة الصنف
        /// </summary>
        public decimal? ItemCost { get; set; }

        /// <summary>
        /// سعر المخزون
        /// </summary>
        public decimal? StockRate { get; set; }

        /// <summary>
        /// تكلفة المخزون
        /// </summary>
        public decimal? StockCost { get; set; }

        /// <summary>
        /// رمز المستودع
        /// </summary>
        public long WarehouseCode { get; set; }

        /// <summary>
        /// مجموعة المستودع
        /// </summary>
        public long? WarehouseGroupCode { get; set; }

        /// <summary>
        /// مركز التكلفة
        /// </summary>
        public string? CostCenterCode { get; set; }

        /// <summary>
        /// رقم المشروع
        /// </summary>
        public string? ProjectNo { get; set; }

        /// <summary>
        /// رقم النشاط
        /// </summary>
        public string? ActivityNo { get; set; }

        /// <summary>
        /// رقم أمر التوريد
        /// </summary>
        public long? GRNo { get; set; }

        /// <summary>
        /// رقم مستند الصرف المرتبط (تحويلات)
        /// </summary>
        public long? OutNo { get; set; }

        /// <summary>
        /// الرقم التسلسلي لأمر التوريد المرتبط
        /// </summary>
        public decimal? OutGRSerial { get; set; }

        /// <summary>
        /// رقم السطر الداخلي
        /// </summary>
        public int? RecordNo { get; set; }

        /// <summary>
        /// رقم تسلسلي إضافي للعنصر
        /// </summary>
        public decimal? Serial { get; set; }

        /// <summary>
        /// رقم مرجعي إضافي
        /// </summary>
        public string? RefNo { get; set; }

        /// <summary>
        /// الباركود المستخدم في الحركة
        /// </summary>
        public string? Barcode { get; set; }

        /// <summary>
        /// نوع الكمية المجانية
        /// </summary>
        public FreeQuantityType? FreeType { get; set; }

        /// <summary>
        /// نوع المرتجع (إن وجد)
        /// </summary>
        public ReturnType? ReturnType { get; set; }

        /// <summary>
        /// نوع الحركة (1=إدخال، 2=إخراج ...)
        /// </summary>
        public MovementType InOut { get; set; }

        /// <summary>
        /// علم الترحيل الخارجي
        /// </summary>
        public int? ExternalPost { get; set; }

        /// <summary>
        /// وصف الحركة
        /// </summary>
        public string? Description { get; set; }

        /// <summary>
        /// تاريخ انتهاء الدفعة
        /// </summary>
        public DateTime ExpireDate { get; set; }

        /// <summary>
        /// رقم التشغيلة/الدفعة كـ ValueObject
        /// </summary>
        public BatchNumber BatchNo { get; private set; }

        /// <summary>
        /// رقم مستوى التسعير المستخدم
        /// </summary>
        public int? LevelNo { get; set; }

        /// <summary>
        /// سعر العنصر بعد الضريبة
        /// </summary>
        public decimal? ItemPriceVat { get; set; }

        /// <summary>
        /// رقم الموظف المرتبط بالحركة
        /// </summary>
        public long? EmployeeNo { get; set; }

        /// <summary>
        /// وحدة الوزن
        /// </summary>
        public string? WeightUnit { get; set; }

        /// <summary>
        /// كمية الوزن
        /// </summary>
        public decimal? WeightQty { get; set; }

        /// <summary>
        /// رقم مرجعي إضافي
        /// </summary>
        public decimal? ArgumentNo { get; set; }

        /// <summary>
        /// طول العنصر
        /// </summary>
        public decimal? ItemLength { get; set; }

        /// <summary>
        /// عرض العنصر
        /// </summary>
        public decimal? ItemWidth { get; set; }

        /// <summary>
        /// ارتفاع العنصر
        /// </summary>
        public decimal? ItemHeight { get; set; }

        /// <summary>
        /// رقم العنصر الإضافي
        /// </summary>
        public decimal? ItemNumber { get; set; }

        /// <summary>
        /// كود تفاصيل الحساب
        /// </summary>
        public string? AccountDtlCode { get; set; }

        /// <summary>
        /// نوع تفاصيل الحساب
        /// </summary>
        public AccountDetailType? AccountDtlType { get; set; }

        /// <summary>
        /// كود العميل
        /// </summary>
        public string? CustomerCode { get; set; }

        /// <summary>
        /// كود المورد
        /// </summary>
        public string? VendorCode { get; set; }

        /// <summary>
        /// تاريخ الإضافة
        /// </summary>
        public DateTime? AddedDate { get; set; }

        /// <summary>
        /// تاريخ آخر تعديل
        /// </summary>
        public DateTime? UpdatedDate { get; set; }

        // العلاقات الدومينية (Navigation Properties)
        /// <summary>
        /// الصنف المرتبط بالحركة
        /// </summary>
        public virtual Item Item { get; set; }

        /// <summary>
        /// الوحدة المرتبطة بالحركة
        /// </summary>
        public virtual ItemMeasurement ItemMeasurement { get; set; }

        /// <summary>
        /// المستودع المرتبط بالحركة
        /// </summary>
        public virtual Warehouse Warehouse { get; set; }

        /// <summary>
        /// مجموعة المستودع المرتبطة
        /// </summary>
        public virtual WarehouseGroup WarehouseGroup { get; set; }

        /// <summary>
        /// مركز التكلفة المرتبط
        /// </summary>
        public virtual CostCenter CostCenter { get; set; }

        /// <summary>
        /// المشروع المرتبط
        /// </summary>
        public virtual Project Project { get; set; }

        /// <summary>
        /// النشاط المرتبط
        /// </summary>
        public virtual Activity Activity { get; set; }

        /// <summary>
        /// المستخدم الذي أضاف الحركة
        /// </summary>
        public virtual User AddedByUser { get; set; }

        /// <summary>
        /// المستخدم الذي عدل الحركة
        /// </summary>
        public virtual User UpdatedByUser { get; set; }

        /// <summary>
        /// مستوى التسعير المستخدم
        /// </summary>
        public virtual PricingLevel PricingLevel { get; set; }

        private ItemMovement() : base(default!) { }
        public ItemMovement(ItemMovementId id, BatchNumber batchNo, string itemCode, int companyNo, int branchNo)
            : base(id)
        {
            BatchNo = batchNo;
            ItemCode = itemCode;
            CompanyNo = companyNo;
            BranchNo = branchNo;
        }
    }
}
