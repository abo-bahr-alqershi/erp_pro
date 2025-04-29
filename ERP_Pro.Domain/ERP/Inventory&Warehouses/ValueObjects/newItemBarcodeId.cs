using System;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// معرف باركود الصنف - معرف فريد لكل باركود مرتبط بوحدة صنف.
    /// </summary>
    public readonly struct ItemBarcodeId : IEquatable<ItemBarcodeId>
    {
        /// <summary>القيمة الدلالية لمعرف الباركود.</summary>
        public string Value { get; }

        /// <summary>إنشاء معرف باركود جديد.</summary>
        /// <param name="value">القيمة النصية للباركود.</param>
        public ItemBarcodeId(string value)
        {
            if (string.IsNullOrWhiteSpace(value))
                throw new ArgumentException("يجب إدخال معرف الباركود.");
            Value = value;
        }

        public override string ToString() => Value;
        public bool Equals(ItemBarcodeId other) => Value == other.Value;
        public override bool Equals(object? obj) => obj is ItemBarcodeId other && Equals(other);
        public override int GetHashCode() => Value.GetHashCode();
        public static bool operator ==(ItemBarcodeId left, ItemBarcodeId right) => left.Equals(right);
        public static bool operator !=(ItemBarcodeId left, ItemBarcodeId right) => !(left == right);
    }
}
