public class OutgoingAccounts
{
    /// <summary> نوع المصروف </summary>
    public int? OutgoingType { get; private set; }
    /// <summary> كود المجموعة </summary>
    public string? GroupCode { get; private set; }
    /// <summary> كود المستودع </summary>
    public long? WarehouseGroupCode { get; private set; }
    /// <summary> كود الحساب </summary>
    public string? AccountCode { get; private set; }
    /// <summary> المستخدم الذي أضاف </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> المستخدم الذي عدل </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ التعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> أولوية التقرير </summary>
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    /// <summary> كود المدير </summary>
    public string? ManagerCode { get; private set; }
    /// <summary> اسم المصروف </summary>
    public string? OutgoingName { get; private set; }
    /// <summary> اسم المصروف بالإنجليزي </summary>
    public string? OutgoingEName { get; private set; }
    /// <summary> علم خاص بالمصروف </summary>
    public bool? OutgoingSr { get; private set; }
    /// <summary> تحويل إلى أصول </summary>
    public bool? ToAssets { get; private set; }
    /// <summary> علم خاص بالمصروف </summary>
    public bool? OutgoingRes { get; private set; }
    /// <summary> مرتبط بفواتير المبيعات </summary>
    public bool? ConnectedWithSalesInvoice { get; private set; }
    /// <summary> علم خاص بالمشاريع </summary>
    public bool? OutgoingPms { get; private set; }
}