namespace ERP_Pro.Domain.Inventory.Enums
{
    /// <summary>
    /// نوع الحركة المخزنية (إدخال، إخراج، تحويل، ...)
    /// </summary>
    public enum MovementType
    {
        /// <summary>إدخال</summary>
        In = 1,
        /// <summary>إخراج</summary>
        Out = 2,
        /// <summary>تحويل</summary>
        Transfer = 3,
        /// <summary>مرتجع</summary>
        Return = 4,
        /// <summary>تسوية</summary>
        Adjustment = 5
    }

    /// <summary>
    /// نوع المستند المرتبط بالحركة
    /// </summary>
    public enum DocumentType
    {
        /// <summary>فاتورة</summary>
        Invoice = 1,
        /// <summary>مرتجع</summary>
        Return = 2,
        /// <summary>تحويل</summary>
        Transfer = 3,
        /// <summary>تجميع</summary>
        Assemble = 4,
        /// <summary>تفكيك</summary>
        Disassemble = 5
    }

    /// <summary>
    /// حالة الحركة (نشطة/ملغاة/معلقة)
    /// </summary>
    public enum MovementStatus
    {
        /// <summary>نشطة</summary>
        Active = 1,
        /// <summary>ملغاة</summary>
        Cancelled = 2,
        /// <summary>معلقة</summary>
        Pending = 3
    }

    /// <summary>
    /// نوع الكمية المجانية (عادية، ترويجية، تعويضية ...)
    /// </summary>
    public enum FreeQuantityType
    {
        /// <summary>عادية</summary>
        Normal = 1,
        /// <summary>ترويجية</summary>
        Promotional = 2,
        /// <summary>تعويضية</summary>
        Compensation = 3
    }

    /// <summary>
    /// نوع المرتجع (مرتجع مبيعات، مرتجع مشتريات ...)
    /// </summary>
    public enum ReturnType
    {
        /// <summary>بدون مرتجع</summary>
        None = 0,
        /// <summary>مرتجع مبيعات</summary>
        SalesReturn = 1,
        /// <summary>مرتجع مشتريات</summary>
        PurchaseReturn = 2
    }

    /// <summary>
    /// نوع التكلفة (أساسي/نهائي)
    /// </summary>
    public enum CostType
    {
        /// <summary>أساسي</summary>
        Basic = 1,
        /// <summary>نهائي</summary>
        Final = 2
    }

    /// <summary>
    /// نوع مستند الفاتورة المرتبط
    /// </summary>
    public enum BillDocumentType
    {
        /// <summary>غير محدد</summary>
        None = 0,
        /// <summary>فاتورة مبيعات</summary>
        SalesInvoice = 1,
        /// <summary>فاتورة مشتريات</summary>
        PurchaseInvoice = 2
    }

    /// <summary>
    /// نوع تفاصيل الحساب (رئيسي، فرعي، مركز تكلفة ...)
    /// </summary>
    public enum AccountDetailType
    {
        /// <summary>رئيسي</summary>
        Main = 1,
        /// <summary>فرعي</summary>
        Sub = 2,
        /// <summary>مركز تكلفة</summary>
        CostCenter = 3
    }
}
