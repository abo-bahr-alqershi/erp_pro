namespace ERP_Pro.Domain.Inventory.Enums
{

    /// <summary>
    /// نوع المخزون (رئيسي/فرعي/خدمي)
    /// </summary>
    public enum StockType
    {
        Main = 1,
        Sub = 2,
        Service = 3
    }

    /// <summary>
    /// نوع التعبئة (يدوي/آلي)
    /// </summary>
    public enum FillType
    {
        Manual = 1,
        Automatic = 2
    }
}
