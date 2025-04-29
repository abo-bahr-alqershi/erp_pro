// معرف سعر الصنف كـ ValueObject
using System;
using ERP_Pro.Domain.Common.Primitives;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// معرف فريد لسعر الصنف (ItemPriceId) كـ ValueObject.
    /// </summary>
    public sealed record ItemPriceId(Guid Value)
    {
        public static ItemPriceId NewId() => new(Guid.NewGuid());
        public override string ToString() => Value.ToString();
    }
}
