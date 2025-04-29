using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Domain.Common.Entities
{
public abstract class AggregateRoot<TId> : Entity<TId>
{
        protected AggregateRoot(TId id) : base(id) { }
        // Marker class for DDD Aggregate Roots
        private readonly List<IDomainEvent> _domainEvents = new();
        public new IReadOnlyCollection<IDomainEvent> DomainEvents => _domainEvents.AsReadOnly();

        protected void AddDomainEvent(IDomainEvent domainEvent)
        {
            _domainEvents.Add(domainEvent);
        }
        protected void RemoveDomainEvent(IDomainEvent domainEvent)
        {
            _domainEvents.Remove(domainEvent);
        }
        public new void ClearDomainEvents()
        {
            _domainEvents.Clear();
        }
        public void ClearDomainEvents(IDomainEvent domainEvent)
        {
            _domainEvents.Remove(domainEvent);
        }
        public void ClearDomainEvents(IReadOnlyCollection<IDomainEvent> domainEvents)
        {
            foreach (var domainEvent in domainEvents)
            {
                _domainEvents.Remove(domainEvent);
            }
        }
        public void ClearDomainEvents(ICollection<IDomainEvent> domainEvents)
        {
            foreach (var domainEvent in domainEvents)
            {
                _domainEvents.Remove(domainEvent);
            }
        }

    }
}