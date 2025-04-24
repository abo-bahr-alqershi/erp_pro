namespace ERP_Pro.Domain.Common.Entities
{
    public abstract class AggregateRoot<TId> : AuditableEntity<TId>
    {
        // Marker class for DDD Aggregate Roots
    }
}