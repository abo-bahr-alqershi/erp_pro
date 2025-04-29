using ERP_Pro.Domain.Common.Primitives;
using System;

namespace ERP_Pro.Domain.Inventory.Events
{
    /// <summary>
    /// حدث عند إنشاء مستوى تسعير جديد
    /// </summary>
    public class PricingLevelCreatedEvent : DomainEventBase
    {
        public int LevelNo { get; }
        public string LevelAName { get; }
        public DateTime CreatedAt { get; }

        public PricingLevelCreatedEvent(int levelNo, string levelAName, DateTime createdAt)
        {
            LevelNo = levelNo;
            LevelAName = levelAName;
            CreatedAt = createdAt;
        }
    }

    /// <summary>
    /// حدث عند تعديل مستوى تسعير
    /// </summary>
    public class PricingLevelUpdatedEvent : DomainEventBase
    {
        public int LevelNo { get; }
        public DateTime UpdatedAt { get; }

        public PricingLevelUpdatedEvent(int levelNo, DateTime updatedAt)
        {
            LevelNo = levelNo;
            UpdatedAt = updatedAt;
        }
    }

    /// <summary>
    /// حدث عند حذف مستوى تسعير
    /// </summary>
    public class PricingLevelDeletedEvent : DomainEventBase
    {
        public int LevelNo { get; }
        public DateTime DeletedAt { get; }

        public PricingLevelDeletedEvent(int levelNo, DateTime deletedAt)
        {
            LevelNo = levelNo;
            DeletedAt = deletedAt;
        }
    }

    /// <summary>
    /// حدث عند إنشاء حركة صنف
    /// </summary>
    public class ItemMovementCreatedEvent : DomainEventBase
    {
        public long DocNo { get; }
        public string ItemCode { get; }
        public DateTime CreatedAt { get; }

        public ItemMovementCreatedEvent(long docNo, string itemCode, DateTime createdAt)
        {
            DocNo = docNo;
            ItemCode = itemCode;
            CreatedAt = createdAt;
        }
    }

    /// <summary>
    /// حدث عند تعديل حركة صنف
    /// </summary>
    public class ItemMovementUpdatedEvent : DomainEventBase
    {
        public long DocNo { get; }
        public DateTime UpdatedAt { get; }

        public ItemMovementUpdatedEvent(long docNo, DateTime updatedAt)
        {
            DocNo = docNo;
            UpdatedAt = updatedAt;
        }
    }

    /// <summary>
    /// حدث عند حذف حركة صنف
    /// </summary>
    public class ItemMovementDeletedEvent : DomainEventBase
    {
        public long DocNo { get; }
        public DateTime DeletedAt { get; }

        public ItemMovementDeletedEvent(long docNo, DateTime deletedAt)
        {
            DocNo = docNo;
            DeletedAt = deletedAt;
        }
    }
}
