using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Events
{
    /// <summary>
    /// يُطلق عند تغيير حقل حساس في القيد.
    /// </summary>
    public sealed class MasterJournalBranchFieldChangedEvent : DomainEventBase
    {
        public MasterJournalBranchId Id { get; }
        public string FieldName { get; }
        public object? OldValue { get; }
        public object? NewValue { get; }
        public int ChangedByUserId { get; }

        public MasterJournalBranchFieldChangedEvent(
            MasterJournalBranchId id,
            string fieldName,
            object? oldValue,
            object? newValue,
            int changedByUserId)
        {
            Id = id;
            FieldName = fieldName;
            OldValue = oldValue;
            NewValue = newValue;
            ChangedByUserId = changedByUserId;
        }
    }
}
