using System;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// معرف فريد لسجل تاريخي لسعر الصنف (ItemPriceHistoryId) كـ ValueObject.
    /// </summary>
    public sealed record ItemPriceHistoryId(long Value)
    {
        public override string ToString() => Value.ToString();
    }
}