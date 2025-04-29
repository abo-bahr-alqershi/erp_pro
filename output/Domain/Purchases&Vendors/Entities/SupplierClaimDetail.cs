public class SupplierClaimDetail
{
    public int? BranchNo { get; private set; }
    public long? DocumentNo { get; private set; }
    public long? DocumentSerial { get; private set; }
    public long? BillNo { get; private set; }
    /// <summary> تسلسل الفاتورة </summary>
    public int? BillSerial { get; private set; }
    public bool? BillType { get; private set; }
    /// <summary> تاريخ الفاتورة </summary>
    public DateTime? BillDate { get; private set; }
    /// <summary> مبلغ الفاتورة </summary>
    public int? BillAmount { get; private set; }
    /// <summary> مبلغ الخصم </summary>
    public int? DiscountAmount { get; private set; }
    /// <summary> المبلغ الصافي </summary>
    public int? NetAmount { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public long? UpdateCount { get; private set; }
    /// <summary> مبالغ أخرى مرتبطة بالفاتورة </summary>
    public int? OtherAmount { get; private set; }
    /// <summary> مبلغ الضريبة </summary>
    public int? VATAmount { get; private set; }
    /// <summary> صافي مبلغ الفاتورة </summary>
    public int? NetBillAmount { get; private set; }
    public long? RcrdNo { get; private set; }
    public short? ItmGrpTyp { get; private set; }
    public string? ItmGrpVal { get; private set; }
    public short? BrnYear { get; private set; }
    public short? BrnUsr { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    public long? DocumentNo { get; private set; }
    public long? DocumentSerial { get; private set; }
    public DateTime? DocDate { get; private set; }
    public string? VCode { get; private set; }
    public string? ACy { get; private set; }
    public DateTime? FDate { get; private set; }
    public DateTime? TDate { get; private set; }
    public string? RefNo { get; private set; }
    public string? DocDsc { get; private set; }
    public bool? Processed { get; private set; }
    public int? DocAmt { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public int? PrRep { get; private set; }
    public long? UpdateCount { get; private set; }
    public short? BrnUsr { get; private set; }
    public short? BrnYear { get; private set; }
    public short? CmpNo { get; private set; }
    public SupplierClaim SupplierClaim { get; private set; } // Navigation
}