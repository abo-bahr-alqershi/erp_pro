namespace ERP_Pro.Domain.Inventory.ValueObjects
{

    /// <summary>
    /// كود الصنف (قيمة كائنية)
    /// </summary>
    public record ItemCode(string Value);

    /// <summary>
    /// كود المستودع (قيمة كائنية)
    /// </summary>
    public record WarehouseCode(string Value);

    /// <summary>
    /// رقم التشغيلة/الدفعة (قيمة كائنية)
    /// </summary>
    public record BatchNumber(string Value);

    /// <summary>
    /// كود الباركود (قيمة كائنية)
    /// </summary>
    public record Barcode(string Value);

    /// <summary>
    /// كود الوحدة (قيمة كائنية)
    /// </summary>
    public record ItemUnit(string Value);

    /// <summary>
    /// كود الحساب (قيمة كائنية)
    /// </summary>
    public record AccountCode(string Value);

    /// <summary>
    /// كود مركز التكلفة (قيمة كائنية)
    /// </summary>
    public record CostCenterCode(string Value);

    /// <summary>
    /// كود المشروع (قيمة كائنية)
    /// </summary>
    public record ProjectNo(string Value);

    /// <summary>
    /// كود النشاط (قيمة كائنية)
    /// </summary>
    public record ActivityNo(string Value);

    /// <summary>
    /// كود المورد (قيمة كائنية)
    /// </summary>
    public record VendorCode(string Value);

    /// <summary>
    /// كود العملة (قيمة كائنية)
    /// </summary>
    public record CurrencyCode(string Value);
}
