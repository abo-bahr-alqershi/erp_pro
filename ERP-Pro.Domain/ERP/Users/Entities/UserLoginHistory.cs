using ERP_Pro.Domain.Common.Entities;
using System;

namespace ERP_Pro.Domain.Users.Entities
{
    public class UserLoginHistory : Entity<int>
    {
        public int UserId { get; set; }
        public User User { get; set; }
        public DateTime LoginDate { get; set; }
        public string IPAddress { get; set; }
        public string DeviceInfo { get; set; }
        public bool IsSuccess { get; set; }
    }
}