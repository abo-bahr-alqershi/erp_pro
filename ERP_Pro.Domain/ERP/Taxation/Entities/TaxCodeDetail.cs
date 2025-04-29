public class TaxCodeDetail
{
    /// <summary> رقم الضريبة الرئيسي </summary>
    public int TaxNo { get; private set; }
    /// <summary> رقم الجهة </summary>
    public int AgencyNo { get; private set; }
    /// <summary> اسم الجهة عربي </summary>
    public string AgencyArabicName { get; private set; }
    /// <summary> اسم الجهة إنجليزي </summary>
    public string? AgencyEnglishName { get; private set; }
    /// <summary> كود الحساب للمدين </summary>
    public string? AccountCodeReceivable { get; private set; }
    /// <summary> كود الحساب للدائن </summary>
    public string? AccountCodePayable { get; private set; }
    /// <summary> نسبة الضريبة </summary>
    public int? TaxPercent { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public string TaxLNm { get; private set; }
    public string? TaxFNm { get; private set; }
    public int? ClcDocTyp { get; private set; }
    public short AgncyCnt { get; private set; }
    public bool? Inactive { get; private set; }
    public int? InactiveUId { get; private set; }
    public DateTime? InactiveDate { get; private set; }
    public string? InactiveRes { get; private set; }
    /// <summary> المستخدم الذي أضاف السطر </summary>
    public int? AddedUserId { get; private set; }
    /// <summary> تاريخ الإضافة </summary>
    public DateTime? AddedDate { get; private set; }
    /// <summary> اسم الجهاز عند الإضافة </summary>
    public string? AddedTerminal { get; private set; }
    /// <summary> المستخدم الذي عدل السطر </summary>
    public int? UpdatedUserId { get; private set; }
    /// <summary> تاريخ آخر تعديل </summary>
    public DateTime? UpdatedDate { get; private set; }
    public int? PrRep { get; private set; }
    /// <summary> عدد مرات التحديث </summary>
    public long? UpdateCount { get; private set; }
    /// <summary> اسم الجهاز عند التعديل </summary>
    public string? UpdatedTerminal { get; private set; }
    public bool? DfltFlg { get; private set; }
    public string? TaxTypCode { get; private set; }
    public Account Account { get; private set; } // Navigation
    public Account Account { get; private set; } // Navigation
    public TaxCodeMaster TaxCodeMaster { get; private set; } // Navigation
    public ICollection<TaxInput> TaxInputs { get; private set; } // Inverse Navigation
}