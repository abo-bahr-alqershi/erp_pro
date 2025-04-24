using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.HR.Entities
{
    public class Department : Entity<int>
    {
        public string DepartmentName { get; set; }
        public int? ParentDepartmentId { get; set; }
        public Department ParentDepartment { get; set; }
    }
}