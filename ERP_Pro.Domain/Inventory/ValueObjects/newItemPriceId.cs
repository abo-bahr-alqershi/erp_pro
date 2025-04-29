using System;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// معرف سعر الصنف - معرف فريد لكل سجل سعر لصنف محدد.
    /// </summary>
    public readonly struct ItemPriceId : IEquatable<ItemPriceId>
    {
        /// <summary>القيمة الدلالية لمعرف سعر الصنف.</summary>
        public string Value { get; }

        /// <summary>إنشاء معرف سعر صنف جديد.</summary>
        /// <param name="value">القيمة النصية للمعرف.</param>
        public ItemPriceId(string value)
        {
            if (string.IsNullOrWhiteSpace(value))
                throw new ArgumentException("يجب إدخال معرف سعر الصنف.");
            Value = value;
        }

        public override string ToString() => Value;
        public bool Equals(ItemPriceId other) => Value == other.Value;
        public override bool Equals(object? obj) => obj is ItemPriceId other && Equals(other);
        public override int GetHashCode() => Value.GetHashCode();
        public static bool operator ==(ItemPriceId left, ItemPriceId right) => left.Equals(right);
        public static bool operator !=(ItemPriceId left, ItemPriceId right) => !(left == right);
    }
}
