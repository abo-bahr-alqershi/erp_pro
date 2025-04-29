using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Events
{
    public class OpenBalanceFieldChangedEvent : DomainEventBase
    {
        public long DocSequence { get; }
        public string FieldName { get; }
        public object? OldValue { get; }
        public object? NewValue { get; }
        public int? UserId { get; }
        public DateTime ChangedOn { get; }
        public OpenBalanceFieldChangedEvent(long docSequence, string fieldName, object? oldValue, object? newValue, int? userId, DateTime changedOn)
        {
            DocSequence = docSequence;
            FieldName = fieldName;
            OldValue = oldValue;
            NewValue = newValue;
            UserId = userId;
            ChangedOn = changedOn;
        }
    }
}
