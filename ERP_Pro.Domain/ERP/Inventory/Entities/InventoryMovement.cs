namespace ERP_Pro.Domain.Inventory.Entities
{
    public class InventoryMovement : AggregateRoot<Guid>
    {
        public Guid WarehouseId { get; set; }
        public InventoryMovementType MovementType { get; set; }
        public Guid ProductId { get; set; }
        public decimal Quantity { get; set; }
        public DateTime MovementDate { get; set; }
        public string ReferenceNumber { get; set; }
        public string Notes { get; set; }
        public Guid? RelatedDocumentId { get; set; }
        public string RelatedDocumentType { get; set; }
    }
}