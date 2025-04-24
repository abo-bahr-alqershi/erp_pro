using ERP_Pro.Domain.Common.Entities;
using System.Collections.Generic;

namespace ERP_Pro.Domain.Users.Entities
{
    public class User : AggregateRoot<int>
    {
        public string Username { get; set; }
        public string PasswordHash { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public int? EmployeeId { get; set; }
        public bool IsActive { get; set; }
        public ICollection<UserRole> UserRoles { get; set; }
        public ICollection<UserClaim> Claims { get; set; }
        public ICollection<UserLoginHistory> LoginHistory { get; set; }
    }
}