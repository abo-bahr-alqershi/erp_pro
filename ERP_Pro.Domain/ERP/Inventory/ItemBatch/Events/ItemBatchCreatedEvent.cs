using ERP_Pro.Domain.Common.Events;
using ERP_Pro.Inventory.Domain.ItemBatch.ValueObjects;

namespace ERP_Pro.Inventory.Domain.ItemBatch.Events
{
    /// <summary>
    /// يُطلق عند إنشاء دفعة صنف جديدة.
    /// </summary>
    public class ItemBatchCreatedEvent : DomainEventBase
    {
        public ItemBatchId Id { get; }
        public int CreatedBy { get; }
        public ItemBatchCreatedEvent(ItemBatchId id, int createdBy)
        {
            Id = id;
            CreatedBy = createdBy;
        }
    }
}
