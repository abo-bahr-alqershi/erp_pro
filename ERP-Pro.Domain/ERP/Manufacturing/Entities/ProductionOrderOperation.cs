using ERP_Pro.Domain.Common.Entities;
using System;

namespace ERP_Pro.Domain.Manufacturing.Entities
{
    public class ProductionOrderOperation : Entity<int>
    {
        public int ProductionOrderId { get; set; }
        public string OperationName { get; set; }
        public int Sequence { get; set; }
        public DateTime? StartTime { get; set; }
        public DateTime? EndTime { get; set; }
        public string Machine { get; set; }
        public string Operator { get; set; }
        public ManufacturingOperationStatus Status { get; set; }
        public string Notes { get; set; }
    }
}