using System;

namespace ERP_Pro.Domain.Common.Events
{
    public abstract class DomainEventBase : IDomainEvent
    {
        public DateTime OccurredOn { get; protected set; } = DateTime.UtcNow;
        
    }
}