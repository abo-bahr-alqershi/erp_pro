using System;

namespace ERP_Pro.Domain.Common.Events
{
    public interface IDomainEvent
    {
        DateTime OccurredOn { get; }
    }
}