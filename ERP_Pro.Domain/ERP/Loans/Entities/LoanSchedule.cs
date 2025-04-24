using ERP_Pro.Domain.Common.Entities;
using System;

namespace ERP_Pro.Domain.Loans.Entities
{
    public class LoanSchedule : Entity<int>
    {
        public int LoanId { get; set; }
        public DateTime DueDate { get; set; }
        public decimal PrincipalDue { get; set; }
        public decimal InterestDue { get; set; }
        public decimal TotalDue { get; set; }
        public bool IsPaid { get; set; }
        public DateTime? PaidDate { get; set; }
        public string Notes { get; set; }
    }
}