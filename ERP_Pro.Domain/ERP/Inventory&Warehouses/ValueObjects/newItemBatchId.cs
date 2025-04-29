using System;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// معرف دفعة الصنف - معرف فريد لكل دفعة صنف في النظام.
    /// </summary>
    public readonly struct ItemBatchId : IEquatable<ItemBatchId>
    {
        /// <summary>القيمة الدلالية لمعرف الدفعة.</summary>
        public string Value { get; }

        /// <summary>إنشاء معرف دفعة جديد.</summary>
        /// <param name="value">القيمة النصية للدفعة.</param>
        public ItemBatchId(string value)
        {
            if (string.IsNullOrWhiteSpace(value))
                throw new ArgumentException("يجب إدخال معرف الدفعة.");
            Value = value;
        }

        public override string ToString() => Value;
        public bool Equals(ItemBatchId other) => Value == other.Value;
        public override bool Equals(object? obj) => obj is ItemBatchId other && Equals(other);
        public override int GetHashCode() => Value.GetHashCode();
        public static bool operator ==(ItemBatchId left, ItemBatchId right) => left.Equals(right);
        public static bool operator !=(ItemBatchId left, ItemBatchId right) => !(left == right);
    }
}
