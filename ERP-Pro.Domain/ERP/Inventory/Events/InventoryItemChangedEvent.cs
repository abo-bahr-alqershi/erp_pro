using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Domain.Inventory.Events
{
    public class InventoryItemChangedEvent : DomainEventBase
    {
        public int InventoryItemId { get; }
        public InventoryItemChangedEvent(int inventoryItemId) => InventoryItemId = inventoryItemId;
    }
}