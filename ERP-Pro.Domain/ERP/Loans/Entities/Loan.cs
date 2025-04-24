using ERP_Pro.Domain.Common.Entities;
using System;
using System.Collections.Generic;

namespace ERP_Pro.Domain.Loans.Entities
{
    public class Loan : AggregateRoot<int>
    {
        public string LoanCode { get; set; }
        public string Lender { get; set; }
        public decimal PrincipalAmount { get; set; }
        public decimal InterestRate { get; set; }
        public int TermMonths { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public LoanStatus Status { get; set; }
        public decimal? OutstandingBalance { get; set; }
        public string Description { get; set; }
        public ICollection<LoanSchedule> PaymentSchedules { get; set; }
        public ICollection<LoanAttachment> Attachments { get; set; }
    }
}