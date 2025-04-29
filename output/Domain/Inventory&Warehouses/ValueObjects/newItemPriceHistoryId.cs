using System;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// معرف سجل تاريخ سعر الصنف - معرف فريد لكل سجل تاريخي لسعر صنف.
    /// </summary>
    public readonly struct ItemPriceHistoryId : IEquatable<ItemPriceHistoryId>
    {
        /// <summary>القيمة الدلالية لمعرف سجل تاريخ السعر.</summary>
        public string Value { get; }

        /// <summary>إنشاء معرف سجل تاريخ سعر جديد.</summary>
        /// <param name="value">القيمة النصية للمعرف.</param>
        public ItemPriceHistoryId(string value)
        {
            if (string.IsNullOrWhiteSpace(value))
                throw new ArgumentException("يجب إدخال معرف سجل تاريخ السعر.");
            Value = value;
        }

        public override string ToString() => Value;
        public bool Equals(ItemPriceHistoryId other) => Value == other.Value;
        public override bool Equals(object? obj) => obj is ItemPriceHistoryId other && Equals(other);
        public override int GetHashCode() => Value.GetHashCode();
        public static bool operator ==(ItemPriceHistoryId left, ItemPriceHistoryId right) => left.Equals(right);
        public static bool operator !=(ItemPriceHistoryId left, ItemPriceHistoryId right) => !(left == right);
    }
}
