using System;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// معرف المستودع - معرف فريد لكل مستودع في النظام.
    /// </summary>
    public readonly struct WarehouseId : IEquatable<WarehouseId>
    {
        /// <summary>القيمة الدلالية لمعرف المستودع.</summary>
        public string Value { get; }

        /// <summary>إنشاء معرف مستودع جديد.</summary>
        /// <param name="value">القيمة النصية للمعرف.</param>
        public WarehouseId(string value)
        {
            if (string.IsNullOrWhiteSpace(value))
                throw new ArgumentException("يجب إدخال معرف المستودع.");
            Value = value;
        }

        public override string ToString() => Value;
        public bool Equals(WarehouseId other) => Value == other.Value;
        public override bool Equals(object? obj) => obj is WarehouseId other && Equals(other);
        public override int GetHashCode() => Value.GetHashCode();
        public static bool operator ==(WarehouseId left, WarehouseId right) => left.Equals(right);
        public static bool operator !=(WarehouseId left, WarehouseId right) => !(left == right);
    }
}
