using ERP_Pro.Domain.Common.Entities;
using System;

namespace ERP_Pro.Domain.Inventory.Entities
{
    public class InventoryTransaction : Entity<int>
    {
        public int InventoryItemId { get; set; }
        public InventoryTransactionType TransactionType { get; set; }
        public DateTime TransactionDate { get; set; }
        public decimal Quantity { get; set; }
        public string Reference { get; set; }
        public string Description { get; set; }
        public int? SourceWarehouseId { get; set; }
        public int? DestinationWarehouseId { get; set; }
        public int? RelatedDocumentId { get; set; }
        public string RelatedDocumentType { get; set; }
        public decimal? Cost { get; set; }
    }
}