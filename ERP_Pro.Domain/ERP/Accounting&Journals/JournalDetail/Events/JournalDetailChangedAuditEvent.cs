using System;
using System.Collections.Generic;
using Domain.Common;

namespace Accounting.Domain.Journals.Events
{
    /// <summary>
    /// حدث تدقيق عند أي تغيير على تفاصيل القيد اليومي
    /// </summary>
    public class JournalDetailChangedAuditEvent : DomainEventBase
    {
        public JournalDetailId JournalDetailId { get; }
        public string Operation { get; }
        public int? UserId { get; }
        public DateTime OperationDate { get; }
        public IDictionary<string, object> OldValues { get; }
        public IDictionary<string, object> NewValues { get; }

        public JournalDetailChangedAuditEvent(
            JournalDetailId id, string operation, int? userId, DateTime operationDate,
            IDictionary<string, object> oldValues, IDictionary<string, object> newValues)
        {
            JournalDetailId = id;
            Operation = operation;
            UserId = userId;
            OperationDate = operationDate;
            OldValues = oldValues;
            NewValues = newValues;
        }
    }
}