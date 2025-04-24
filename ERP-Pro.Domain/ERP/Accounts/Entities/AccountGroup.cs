using ERP_Pro.Domain.Common.Entities;
using System.Collections.Generic;

namespace ERP_Pro.Domain.Accounts.Entities
{
    public class AccountGroup : Entity<int>
    {
        public string GroupName { get; set; }
        public string Description { get; set; }
        public ICollection<Account> Accounts { get; set; }
    }
}