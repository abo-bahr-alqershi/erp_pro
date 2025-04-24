using ERP_Pro.Domain.Common.ValueObjects;

namespace ERP_Pro.Domain.Notifications.ValueObjects
{
    public class NotificationChannel : ValueObject
    {
        public string Value { get; }
        public NotificationChannel(string value) { Value = value; }
        protected override System.Collections.Generic.IEnumerable<object> GetEqualityComponents() { yield return Value; }
    }
}