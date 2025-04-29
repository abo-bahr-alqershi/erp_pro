using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند تغيير صلاحيات مستخدم على القيد.
    /// </summary>
    public sealed class MasterJournalBranchUserPermissionChangedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public int UserId { get; }
        public string Permission { get; }
        public bool Granted { get; }

        public MasterJournalBranchUserPermissionChangedEvent(MasterJournalBranchId id, int userId, string permission, bool granted)
        {
            Id = id;
            UserId = userId;
            Permission = permission;
            Granted = granted;
        }
    }
}
