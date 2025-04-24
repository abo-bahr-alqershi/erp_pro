using ERP_Pro.Domain.Common.Entities;
using System;
using System.Collections.Generic;

namespace ERP_Pro.Domain.Manufacturing.Entities
{
    public class ProductionOrder : AggregateRoot<int>
    {
        public string OrderNumber { get; set; }
        public ManufacturingOrderStatus Status { get; set; }
        public DateTime ProductionDate { get; set; }
        public int ProductId { get; set; }
        public decimal QuantityToProduce { get; set; }
        public decimal QuantityProduced { get; set; }
        public string UnitOfMeasure { get; set; }
        public int? WarehouseId { get; set; }
        public string Notes { get; set; }
        public ICollection<ProductionOrderLine> BillOfMaterials { get; set; }
        public ICollection<ProductionOrderOperation> Operations { get; set; }
    }
}