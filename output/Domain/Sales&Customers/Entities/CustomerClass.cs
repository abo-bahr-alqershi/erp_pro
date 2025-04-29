public class CustomerClass
{
    public short? ClassCode { get; private set; }
    /// <summary> اسم التصنيف عربي </summary>
    public string? ClassArabicName { get; private set; }
    /// <summary> اسم التصنيف إنجليزي </summary>
    public string? ClassEnglishName { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public long? ReportPriority { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public string? CClassTypNm { get; private set; }
    public string? CClassTypFNm { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public int? ReportPriority { get; private set; }
    public long? UpdateCount { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public string? ACy { get; private set; }
    public decimal? CrLimit { get; private set; }
    public decimal? InvLimit { get; private set; }
    public int? CstLmtPer { get; private set; }
    public bool? CstLmtTyp { get; private set; }
    public short? LevNo { get; private set; }
    public bool? Inactive { get; private set; }
    public DateTime? CnfrmLstDate { get; private set; }
    public short? LevNoCsh { get; private set; }
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public long? UpdateCount { get; private set; }
    public int? ExternalPost { get; private set; }
    public bool? InactiveSales { get; private set; }
    public ICollection<Customer> Customers { get; private set; } // Inverse Navigation
    public ICollection<CustomerRequest> CustomerRequests { get; private set; } // Inverse Navigation
    public ICollection<SalesDiscount> SalesDiscounts { get; private set; } // Inverse Navigation
    public ICollection<SalesFreeQty> SalesFreeQties { get; private set; } // Inverse Navigation
}