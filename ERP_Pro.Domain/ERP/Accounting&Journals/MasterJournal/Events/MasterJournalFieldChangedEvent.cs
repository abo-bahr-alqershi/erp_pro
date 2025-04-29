using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Events
{
    /// <summary>
    /// يُطلق عند تغيير أي حقل حساس في رأس القيد (مثل التاريخ، المبلغ...إلخ).
    /// Triggered when a critical field in MasterJournal is changed (e.g., JDate, BatchVal...etc).
    /// </summary>
    public class MasterJournalFieldChangedEvent : DomainEventBase
    {
        public MasterJournalFieldChangedEvent(Guid masterJournalId, string fieldName, string oldValue, string newValue, int changedByUserId, DateTime changedAt)
        {
            MasterJournalId = masterJournalId;
            FieldName = fieldName;
            OldValue = oldValue;
            NewValue = newValue;
            ChangedByUserId = changedByUserId;
            ChangedAt = changedAt;
        }

        public Guid MasterJournalId { get; }
        public string FieldName { get; }
        public string OldValue { get; }
        public string NewValue { get; }
        public int ChangedByUserId { get; }
        public DateTime ChangedAt { get; }
    }
}