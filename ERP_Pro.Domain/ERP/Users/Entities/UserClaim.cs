using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Users.Entities
{
    public class UserClaim : Entity<int>
    {
        public int UserId { get; set; }
        public User User { get; set; }
        public string ClaimType { get; set; }
        public string ClaimValue { get; set; }
    }
}