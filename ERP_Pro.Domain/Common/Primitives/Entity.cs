using System;
using System.Collections.Generic;

namespace ERPPro.Domain.Common.Primitives
{
    public abstract class Entity<TId>
    {
        public TId Id { get; protected set; }

        private readonly List<object> _domainEvents = new();
        public IReadOnlyCollection<object> DomainEvents => _domainEvents.AsReadOnly();

        protected Entity() { }

        protected Entity(TId id)
        {
            Id = id;
        }

        public void AddDomainEvent(object domainEvent)
        {
            _domainEvents.Add(domainEvent);
        }

        public void ClearDomainEvents()
        {
            _domainEvents.Clear();
        }

        public override bool Equals(object? obj)
        {
            if (obj is not Entity<TId> other)
                return false;

            if (ReferenceEquals(this, other))
                return true;

            return EqualityComparer<TId>.Default.Equals(Id, other.Id);
        }

        public override int GetHashCode() => Id?.GetHashCode() ?? 0;

        public static bool operator ==(Entity<TId>? a, Entity<TId>? b)
        {
            if (a is null && b is null) return true;
            if (a is null || b is null) return false;
            return a.Equals(b);
        }

        public static bool operator !=(Entity<TId>? a, Entity<TId>? b) => !(a == b);
    }
}


// namespace ERP_Pro.Domain.Common.Primitives
// {
//     public readonly struct EntityId : IEquatable<EntityId>
//     {
//         public int Value { get; }

//         public EntityId(int value) => Value = value;

//         public bool Equals(EntityId other) => Value == other.Value;
//         public override bool Equals(object obj) => obj is EntityId other && Equals(other);
//         public override int GetHashCode() => Value;
//         public override string ToString() => Value.ToString();

//         public static implicit operator int(EntityId id) => id.Value;
//         public static explicit operator EntityId(int value) => new(value);
//     }
// }