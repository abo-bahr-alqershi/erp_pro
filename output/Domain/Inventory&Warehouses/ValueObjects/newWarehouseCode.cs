using System;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// كود المستودع - معرف فريد لكل مستودع في النظام.
    /// </summary>
    public readonly struct WarehouseCode : IEquatable<WarehouseCode>
    {
        /// <summary>القيمة الدلالية لكود المستودع.</summary>
        public string Value { get; }

        /// <summary>إنشاء كود مستودع جديد.</summary>
        /// <param name="value">القيمة النصية للكود.</param>
        public WarehouseCode(string value)
        {
            if (string.IsNullOrWhiteSpace(value))
                throw new ArgumentException("يجب إدخال كود المستودع.");
            Value = value;
        }

        public override string ToString() => Value;
        public bool Equals(WarehouseCode other) => Value == other.Value;
        public override bool Equals(object? obj) => obj is WarehouseCode other && Equals(other);
        public override int GetHashCode() => Value.GetHashCode();
        public static bool operator ==(WarehouseCode left, WarehouseCode right) => left.Equals(right);
        public static bool operator !=(WarehouseCode left, WarehouseCode right) => !(left == right);
    }
}
