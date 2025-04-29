using System;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// كود الصنف - معرف فريد لكل صنف في النظام.
    /// </summary>
    public readonly struct ItemCode : IEquatable<ItemCode>
    {
        /// <summary>القيمة الدلالية لكود الصنف.</summary>
        public string Value { get; }

        /// <summary>إنشاء كود صنف جديد.</summary>
        /// <param name="value">القيمة النصية للكود.</param>
        public ItemCode(string value)
        {
            if (string.IsNullOrWhiteSpace(value))
                throw new ArgumentException("يجب إدخال كود الصنف.");
            Value = value;
        }

        public override string ToString() => Value;
        public bool Equals(ItemCode other) => Value == other.Value;
        public override bool Equals(object? obj) => obj is ItemCode other && Equals(other);
        public override int GetHashCode() => Value.GetHashCode();
        public static bool operator ==(ItemCode left, ItemCode right) => left.Equals(right);
        public static bool operator !=(ItemCode left, ItemCode right) => !(left == right);
    }
}
