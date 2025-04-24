using ERP_Pro.Domain.Common.Entities;
using System;

namespace ERP_Pro.Domain.Accounts.Entities
{
    public class AccountNote : Entity<int>
    {
        public int AccountId { get; set; }
        public Account Account { get; set; }
        public string Note { get; set; }
        public DateTime NoteDate { get; set; }
        public int UserId { get; set; }
    }
}