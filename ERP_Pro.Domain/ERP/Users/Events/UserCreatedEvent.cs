using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Domain.Users.Events
{
    public class UserCreatedEvent : DomainEventBase
    {
        public int UserId { get; }
        public UserCreatedEvent(int userId) => UserId = userId;
    }
}