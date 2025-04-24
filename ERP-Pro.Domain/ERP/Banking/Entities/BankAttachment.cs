using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Banking.Entities
{
    public class BankAttachment : Entity<int>
    {
        public int BankAccountId { get; set; }
        public string FileName { get; set; }
        public string FileUrl { get; set; }
    }
}