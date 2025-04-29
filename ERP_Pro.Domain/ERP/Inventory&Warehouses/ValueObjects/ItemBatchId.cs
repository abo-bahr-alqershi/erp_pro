// معرف دفعة الصنف كـ ValueObject
using System;
using ERP_Pro.Domain.Common.Primitives;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// معرف فريد لدفعة الصنف (ItemBatchId) كـ ValueObject.
    /// </summary>
    public sealed record ItemBatchId(Guid Value)
    {
        public static ItemBatchId NewId() => new(Guid.NewGuid());
        public override string ToString() => Value.ToString();
    }
}
