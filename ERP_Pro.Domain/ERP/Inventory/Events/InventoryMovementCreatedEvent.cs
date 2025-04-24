namespace ERP_Pro.Domain.Inventory.Events
{
    public class InventoryMovementCreatedEvent : IDomainEvent
    {
        public Guid MovementId { get; }
        public InventoryMovementCreatedEvent(Guid movementId) => MovementId = movementId;
    }
}