public class TaxInputMovementBranch
{
    /// <summary> نوع المستند الرئيسي </summary>
    public int DocType { get; private set; }
    /// <summary> نوع مستند الفاتورة </summary>
    public short? BillDocType { get; private set; }
    /// <summary> نوع قيد اليومية </summary>
    public int? DocJVType { get; private set; }
    /// <summary> رقم المستند </summary>
    public long? DocumentNo { get; private set; }
    /// <summary> تسلسل المستند </summary>
    public long DocumentSerial { get; private set; }
    /// <summary> تاريخ المستند </summary>
    public DateTime DocumentDate { get; private set; }
    /// <summary> رقم الضريبة </summary>
    public int TaxNo { get; private set; }
    /// <summary> كود نوع احتساب الضريبة </summary>
    public int CalcTypeNo { get; private set; }
    /// <summary> رقم الجهة </summary>
    public int AgencyNo { get; private set; }
    /// <summary> نوع الإدخال </summary>
    public short InputType { get; private set; }
    /// <summary> كود الإدخال </summary>
    public string InputCode { get; private set; }
    /// <summary> كود الحساب </summary>
    public string AccountCode { get; private set; }
    /// <summary> رمز العملة </summary>
    public string CurrencyCode { get; private set; }
    /// <summary> سعر صرف الحساب </summary>
    public int AccountRate { get; private set; }
    /// <summary> مبلغ الإدخال </summary>
    public int? InputAmount { get; private set; }
    /// <summary> نسبة الضريبة </summary>
    public int TaxPercent { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int TaxAmount { get; private set; }
    /// <summary> مبلغ الضريبة بالعملة المحلية </summary>
    public int? TaxAmountLocal { get; private set; }
    /// <summary> مركز التكلفة </summary>
    public string? CostCenterCode { get; private set; }
    /// <summary> رقم المشروع </summary>
    public string? ProjectNo { get; private set; }
    /// <summary> رقم النشاط </summary>
    public string? ActivityNo { get; private set; }
    /// <summary> رقم مرجعي إضافي </summary>
    public string? ReferenceNo { get; private set; }
    /// <summary> رقم السطر </summary>
    public long? RecordNo { get; private set; }
    /// <summary> تسلسل المستند </summary>
    public long? DocSequence { get; private set; }
    /// <summary> ترحيل خارجي </summary>
    public int? ExternalPost { get; private set; }
    /// <summary> رقم الشركة </summary>
    public short? CompanyNo { get; private set; }
    /// <summary> رقم الفرع </summary>
    public int BranchNo { get; private set; }
    /// <summary> السنة المالية للفرع </summary>
    public short? BranchYear { get; private set; }
    /// <summary> مستخدم الفرع </summary>
    public short? BranchUser { get; private set; }
    public Project Project { get; private set; } // Navigation
    public TaxCodeMaster TaxCodeMaster { get; private set; } // Navigation
    public TaxTypeCalculationMaster TaxTypeCalculationMaster { get; private set; } // Navigation
}