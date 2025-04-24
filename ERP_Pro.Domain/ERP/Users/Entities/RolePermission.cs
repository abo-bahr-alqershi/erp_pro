using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Users.Entities
{
    public class RolePermission : Entity<int>
    {
        public int RoleId { get; set; }
        public Role Role { get; set; }
        public string PermissionKey { get; set; }
        public string Description { get; set; }
    }
}