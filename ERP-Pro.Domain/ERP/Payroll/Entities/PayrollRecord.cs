using ERP_Pro.Domain.Common.Entities;
using System;
using System.Collections.Generic;

namespace ERP_Pro.Domain.Payroll.Entities
{
    public class PayrollRecord : AggregateRoot<int>
    {
        public int EmployeeId { get; set; }
        public DateTime PayrollMonth { get; set; }
        public decimal BasicSalary { get; set; }
        public decimal Allowances { get; set; }
        public decimal Overtimes { get; set; }
        public decimal Deductions { get; set; }
        public decimal Taxes { get; set; }
        public decimal NetSalary { get; set; }
        public PayrollStatus Status { get; set; }
        public string Notes { get; set; }
        public ICollection<PayrollAttachment> Attachments { get; set; }
        public ICollection<PayrollComponent> Components { get; set; }
    }
}