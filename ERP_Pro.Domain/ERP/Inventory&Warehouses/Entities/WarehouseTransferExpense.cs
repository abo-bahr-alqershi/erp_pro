public class WarehouseTransferExpense
{
    /// <summary> رقم المستند. </summary>
    public long DocNo { get; private set; }
    /// <summary> الرقم التسلسلي للمستند. </summary>
    public long DocSerial { get; private set; }
    /// <summary> نوع التحويل: وارد/صادر. </summary>
    public short TransferInOutType { get; private set; }
    /// <summary> وصف المستند. </summary>
    public string? DocDesc { get; private set; }
    /// <summary> رقم مرجعي إضافي. </summary>
    public string? RefNo { get; private set; }
    /// <summary> كود الحساب. </summary>
    public string AccountCode { get; private set; }
    /// <summary> تفاصيل الحساب. </summary>
    public string? AccountDtlCode { get; private set; }
    /// <summary> نوع تفاصيل الحساب. </summary>
    public short? AccountDtlType { get; private set; }
    /// <summary> رمز العملة. </summary>
    public string CurrencyCode { get; private set; }
    /// <summary> سعر الصرف. </summary>
    public int? AccountRate { get; private set; }
    /// <summary> مركز التكلفة. </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع. </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط. </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> مبلغ المصروفات. </summary>
    public int? Amount { get; private set; }
    /// <summary> مبلغ المخزون. </summary>
    public int? InventoryAmount { get; private set; }
    /// <summary> علم الترحيل الخارجي. </summary>
    public int? ExternalPost { get; private set; }
    /// <summary> رقم السطر الداخلي. </summary>
    public int? RecordNo { get; private set; }
    /// <summary> رقم الفرع. </summary>
    public short BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع. </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع. </summary>
    public short? BranchUser { get; private set; }
    /// <summary> رقم الشركة. </summary>
    public short CompanyNo { get; private set; }
    /// <summary> رقم فرع المستند. </summary>
    public int? DocBranchNo { get; private set; }
}