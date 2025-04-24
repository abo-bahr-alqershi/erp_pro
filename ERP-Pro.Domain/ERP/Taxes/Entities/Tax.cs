using ERP_Pro.Domain.Common.Entities;
using System.Collections.Generic;

namespace ERP_Pro.Domain.Taxes.Entities
{
    public class Tax : AggregateRoot<int>
    {
        public string TaxName { get; set; }
        public TaxType TaxType { get; set; }
        public decimal Rate { get; set; }
        public bool IsCompound { get; set; }
        public string Description { get; set; }
        public bool IsActive { get; set; }
        public ICollection<TaxRule> Rules { get; set; }
    }
}