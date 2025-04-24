using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.HR.Entities
{
    public class EmployeeAttachment : Entity<int>
    {
        public int EmployeeId { get; set; }
        public string FileName { get; set; }
        public string FileUrl { get; set; }
    }
}