using System;
using System.Collections.Generic;

namespace ERP_Pro.Domain.Common.Entities
{
    public abstract class Entity<TId>
    {
        public TId Id { get; protected set; }

        private readonly List<IDomainEvent> _domainEvents = new();
        public IReadOnlyCollection<IDomainEvent> DomainEvents => _domainEvents.AsReadOnly();

        protected Entity() { }

        protected Entity(TId id) => Id = id;

        public void AddDomainEvent(IDomainEvent domainEvent)
        {
            _domainEvents.Add(domainEvent);
        }

        public void RemoveDomainEvent(IDomainEvent domainEvent)
        {
            _domainEvents?.Remove(domainEvent);
        }

        public void ClearDomainEvents()
        {
            _domainEvents?.Clear();
        }

        public override bool Equals(object obj)
        {
            if (obj == null || obj.GetType() != GetType())
                return false;

            var entity = (Entity<TId>)obj;
            return EqualityComparer<TId>.Default.Equals(Id, entity.Id);
        }

        public override int GetHashCode() => Id.GetHashCode();
    }
}