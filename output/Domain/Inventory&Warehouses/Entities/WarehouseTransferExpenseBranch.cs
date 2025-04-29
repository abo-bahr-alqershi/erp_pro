public class WarehouseTransferExpenseBranch
{
    public long DocNo { get; private set; }
    public long DocSerial { get; private set; }
    public short TransferInOutType { get; private set; }
    /// <summary> وصف المستند. </summary>
    public string? DocDesc { get; private set; }
    /// <summary> رقم مرجعي إضافي. </summary>
    public string? RefNo { get; private set; }
    /// <summary> كود الحساب. </summary>
    public string AccountCode { get; private set; }
    /// <summary> تفاصيل الحساب. </summary>
    public string? AccountDtlCode { get; private set; }
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
    public int? ExternalPost { get; private set; }
    public int? RecordNo { get; private set; }
    public int? DocBranchNo { get; private set; }
    public short BranchNo { get; private set; }
    public short? BranchYear { get; private set; }
    public short? BranchUser { get; private set; }
    public short CompanyNo { get; private set; }
}