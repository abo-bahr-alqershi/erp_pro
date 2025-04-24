using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Payroll.Entities
{
    public class PayrollAttachment : Entity<int>
    {
        public int PayrollRecordId { get; set; }
        public string FileName { get; set; }
        public string FileUrl { get; set; }
    }
}