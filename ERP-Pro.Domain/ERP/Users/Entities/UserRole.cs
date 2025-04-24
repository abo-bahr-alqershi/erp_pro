using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Users.Entities
{
    public class UserRole : Entity<int>
    {
        public int UserId { get; set; }
        public User User { get; set; }
        public int RoleId { get; set; }
        public Role Role { get; set; }
    }
}