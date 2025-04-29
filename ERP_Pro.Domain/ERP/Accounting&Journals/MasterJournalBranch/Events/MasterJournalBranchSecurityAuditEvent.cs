using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند حدوث عملية أمنية حساسة (تغيير مستخدم، محاولة وصول غير مصرح، إلخ).
    /// </summary>
    public sealed class MasterJournalBranchSecurityAuditEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public string Action { get; }
        public int UserId { get; }

        public MasterJournalBranchSecurityAuditEvent(MasterJournalBranchId id, string action, int userId)
        {
            Id = id;
            Action = action;
            UserId = userId;
        }
    }
}
