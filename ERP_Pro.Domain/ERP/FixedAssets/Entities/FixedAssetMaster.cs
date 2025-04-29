public class FixedAssetMaster
{
    /// <summary> كود الأصل الثابت </summary>
    public string? AssetCode { get; private set; }
    /// <summary> رقم الموظف المسؤول </summary>
    public long? EmployeeNo { get; private set; }
    /// <summary> اسم الأصل عربي </summary>
    public string? AssetArabicName { get; private set; }
    /// <summary> اسم الأصل إنجليزي </summary>
    public string? AssetEnglishName { get; private set; }
    /// <summary> رصيد نهاية الفترة (كمية) </summary>
    public int? EndBalanceQty { get; private set; }
    /// <summary> حالة الأصل </summary>
    public bool? AssetStatus { get; private set; }
}