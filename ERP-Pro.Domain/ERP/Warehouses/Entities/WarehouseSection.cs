using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Warehouses.Entities
{
    public class WarehouseSection : Entity<int>
    {
        public int WarehouseId { get; set; }
        public string SectionName { get; set; }
        public string Description { get; set; }
    }
}