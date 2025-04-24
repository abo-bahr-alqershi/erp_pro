using ERP_Pro.Domain.Common.Entities;
using System.Collections.Generic;

namespace ERP_Pro.Domain.Warehouses.Entities
{
    public class Warehouse : AggregateRoot<int>
    {
        public string WarehouseCode { get; set; }
        public string NameAr { get; set; }
        public string NameEn { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string Country { get; set; }
        public string ManagerName { get; set; }
        public bool IsActive { get; set; }
        public string Note { get; set; }
        public ICollection<WarehouseSection> Sections { get; set; }
    }
}