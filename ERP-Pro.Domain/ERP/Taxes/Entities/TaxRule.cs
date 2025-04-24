using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Taxes.Entities
{
    public class TaxRule : Entity<int>
    {
        public int TaxId { get; set; }
        public string RuleName { get; set; }
        public string Condition { get; set; }
        public string Notes { get; set; }
    }
}