using ERP_Pro.Domain.Common.Primitives;
using ERP_Pro.Domain.Inventory.ValueObjects;

namespace ERP_Pro.Domain.Inventory.Events
{
    /// <summary>
    /// حدث إنشاء سعر صنف.
    /// </summary>
    public sealed class ItemPriceCreatedEvent : DomainEvent
    {
        public ItemPriceCreatedEvent(ItemPriceId id, int levelNo, string itemCode, string itemUnit, decimal itemPriceValue, int branchNo, string batchNo)
        {
            Id = id;
            LevelNo = levelNo;
            ItemCode = itemCode;
            ItemUnit = itemUnit;
            ItemPriceValue = itemPriceValue;
            BranchNo = branchNo;
            BatchNo = batchNo;
        }
        public ItemPriceId Id { get; }
        public int LevelNo { get; }
        public string ItemCode { get; }
        public string ItemUnit { get; }
        public decimal ItemPriceValue { get; }
        public int BranchNo { get; }
        public string BatchNo { get; }
    }

    /// <summary>
    /// حدث تعديل سعر صنف.
    /// </summary>
    public sealed class ItemPriceUpdatedEvent : DomainEvent
    {
        public ItemPriceUpdatedEvent(ItemPriceId id) => Id = id;
        public ItemPriceId Id { get; }
    }

    /// <summary>
    /// حدث حذف سعر صنف.
    /// </summary>
    public sealed class ItemPriceDeletedEvent : DomainEvent
    {
        public ItemPriceDeletedEvent(ItemPriceId id) => Id = id;
        public ItemPriceId Id { get; }
    }
}