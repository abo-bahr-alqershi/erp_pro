using ERP_Pro.Domain.Common.Entities;
using System.Collections.Generic;

namespace ERP_Pro.Domain.POS.Entities
{
    public class POSRegister : AggregateRoot<int>
    {
        public string RegisterCode { get; set; }
        public string Description { get; set; }
        public int BranchId { get; set; }
        public bool IsActive { get; set; }
        public ICollection<POSReceipt> Receipts { get; set; }
        public ICollection<POSEndOfDay> EndOfDays { get; set; }
    }
}