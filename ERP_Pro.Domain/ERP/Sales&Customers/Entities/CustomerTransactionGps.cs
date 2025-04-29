public class CustomerTransactionGps
{
    /// <summary> نوع المستند أو المعاملة </summary>
    public long? DocType { get; private set; }
    /// <summary> الرقم التسلسلي للمعاملة </summary>
    public long? DocSerial { get; private set; }
    /// <summary> كود العميل </summary>
    public string? CustomerCode { get; private set; }
    /// <summary> إحداثي الطول (X) </summary>
    public string? GpsLongitude { get; private set; }
    /// <summary> إحداثي العرض (Y) </summary>
    public string? GpsLatitude { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    public string? NewsLDsc { get; private set; }
    public string? NewsFDsc { get; private set; }
    public DateTime? FDate { get; private set; }
    public DateTime? TDate { get; private set; }
    public bool? Inactive { get; private set; }
    public int BrnNo { get; private set; }
    public string? ImgPath { get; private set; }
    public string? LnkYoutube { get; private set; }
    public string? NewsDsc { get; private set; }
    public string? LnkWebSite { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public long? UpCnt { get; private set; }
    public long? PrRep { get; private set; }
}