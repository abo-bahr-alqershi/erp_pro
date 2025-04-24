using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Payroll.Entities
{
    public class PayrollComponent : Entity<int>
    {
        public int PayrollRecordId { get; set; }
        public PayrollComponentType ComponentType { get; set; } // Allowance/Bonus/Deduction/Etc.
        public string Name { get; set; }
        public decimal Amount { get; set; }
        public string Notes { get; set; }
    }
}