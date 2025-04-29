using ERP_Pro.Domain.Inventory.ValueObjects;

namespace ERP_Pro.Domain.Inventory.Events
{
    /// <summary>
    /// حدث إضافة سجل تاريخي لسعر الصنف.
    /// </summary>
    public sealed class ItemPriceHistoryCreatedEvent
    {
        public ItemPriceHistoryCreatedEvent(ItemPriceHistoryId auditNo, int levelNo, string itemCode, decimal itemPrice, int branchNo, string batchNo)
        {
            AuditNo = auditNo;
            LevelNo = levelNo;
            ItemCode = itemCode;
            ItemPrice = itemPrice;
            BranchNo = branchNo;
            BatchNo = batchNo;
        }
        public ItemPriceHistoryId AuditNo { get; }
        public int LevelNo { get; }
        public string ItemCode { get; }
        public decimal ItemPrice { get; }
        public int BranchNo { get; }
        public string BatchNo { get; }
    }
}