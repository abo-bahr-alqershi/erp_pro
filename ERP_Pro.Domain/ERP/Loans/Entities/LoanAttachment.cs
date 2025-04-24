using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Loans.Entities
{
    public class LoanAttachment : Entity<int>
    {
        public int LoanId { get; set; }
        public string FileName { get; set; }
        public string FileUrl { get; set; }
    }
}