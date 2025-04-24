using System;

namespace ERP_Pro.Domain.Common.Entities
{
    public abstract class AuditableEntity<TId> : Entity<TId>
    {
        public int CreatedById { get; set; }
        public DateTime CreatedAt { get; set; }
        public int? ModifiedById { get; set; }
        public DateTime? ModifiedAt { get; set; }
    }
}