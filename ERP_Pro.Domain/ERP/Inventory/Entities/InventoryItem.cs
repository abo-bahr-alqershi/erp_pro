using ERP_Pro.Domain.Common.Entities;
using System;
using System.Collections.Generic;

namespace ERP_Pro.Domain.Inventory.Entities
{
    public class InventoryItem : AggregateRoot<int>
    {
        public string ItemCode { get; set; }
        public string Barcode { get; set; }
        public string NameAr { get; set; }
        public string NameEn { get; set; }
        public int ProductId { get; set; }
        public int WarehouseId { get; set; }
        public decimal QuantityOnHand { get; set; }
        public decimal QuantityReserved { get; set; }
        public decimal QuantityAvailable => QuantityOnHand - QuantityReserved;
        public decimal MinStockLevel { get; set; }
        public decimal MaxStockLevel { get; set; }
        public decimal ReorderLevel { get; set; }
        public DateTime? LastMovementDate { get; set; }
        public bool IsActive { get; set; }
        public string Location { get; set; }
        public string Note { get; set; }

        public ICollection<InventoryTransaction> Transactions { get; set; }
    }
}