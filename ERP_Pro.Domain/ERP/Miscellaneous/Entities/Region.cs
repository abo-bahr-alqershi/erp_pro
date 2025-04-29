public class Region
{
    /// <summary> رقم المنطقة </summary>
    public long? RegionCode { get; private set; }
    /// <summary> اسم المنطقة بالعربي </summary>
    public string ArabicName { get; private set; }
    /// <summary> اسم المنطقة بالإنجليزي </summary>
    public string? EnglishName { get; private set; }
    /// <summary> رقم الدولة </summary>
    public short? CountryNo { get; private set; }
    /// <summary> رقم المحافظة </summary>
    public long? ProvinceNo { get; private set; }
    /// <summary> رقم المدينة </summary>
    public long? CityNo { get; private set; }
    /// <summary> اختصار/رمز المنطقة </summary>
    public string? RegionShort { get; private set; }
    /// <summary> رقم المنطقة الجغرافية </summary>
    public short? ZoneNo { get; private set; }
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
    /// <summary> جهاز الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> جهاز التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public string ReqName { get; private set; }
    public string? ReqEName { get; private set; }
    public short? ReqSr { get; private set; }
    public bool? OutTrnsfr { get; private set; }
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
    /// <summary> جهاز الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> جهاز التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public string? ScName { get; private set; }
    public string? ACode { get; private set; }
    public string? ACy { get; private set; }
    public int? AcRate { get; private set; }
    public bool? AmtType { get; private set; }
    public bool? ScType { get; private set; }
    public int? Amt { get; private set; }
    public bool? FillAuto { get; private set; }
    public bool? CalcType { get; private set; }
    public bool? InvItem { get; private set; }
    public bool? AllowReturn { get; private set; }
    public bool? ScQtyType { get; private set; }
    public bool? PostedToSales { get; private set; }
    public bool? ScRetWithoutBillno { get; private set; }
    public bool? AddToBillDisc { get; private set; }
    public short? BillDocType { get; private set; }
    public int? VatPer { get; private set; }
    public bool? UseVat { get; private set; }
    public bool? AmtTypVal { get; private set; }
    public bool? ScPostWithAcy { get; private set; }
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
    /// <summary> جهاز الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> جهاز التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public bool? ScAddFrcInvoice { get; private set; }
    public City City { get; private set; } // Navigation
    public ICollection<Customer> Customers { get; private set; } // Inverse Navigation
    public ICollection<CustomerRequest> CustomerRequests { get; private set; } // Inverse Navigation
    public ICollection<SalesInvoice> SalesInvoices { get; private set; } // Inverse Navigation
    public ICollection<SalesReturn> SalesReturns { get; private set; } // Inverse Navigation
    public ICollection<PurchaseReturn> PurchaseReturns { get; private set; } // Inverse Navigation
    public ICollection<SalesOrder> SalesOrders { get; private set; } // Inverse Navigation
    public ICollection<Warehouse> Warehouses { get; private set; } // Inverse Navigation
}