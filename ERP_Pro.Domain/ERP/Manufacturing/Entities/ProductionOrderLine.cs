using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Manufacturing.Entities
{
    public class ProductionOrderLine : Entity<int>
    {
        public int ProductionOrderId { get; set; }
        public int MaterialProductId { get; set; }
        public string MaterialName { get; set; }
        public decimal QuantityRequired { get; set; }
        public decimal QuantityIssued { get; set; }
        public string UnitOfMeasure { get; set; }
    }
}