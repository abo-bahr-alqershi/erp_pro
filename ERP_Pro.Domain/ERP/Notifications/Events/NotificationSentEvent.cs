using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Domain.Notifications.Events
{
    public class NotificationSentEvent : DomainEventBase
    {
        public int NotificationId { get; }
        public NotificationSentEvent(int notificationId) => NotificationId = notificationId;
    }
}