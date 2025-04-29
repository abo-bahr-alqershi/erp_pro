using System;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// رقم الدفعة - معرف فريد لكل دفعة صنف في النظام.
    /// </summary>
    public readonly struct BatchNumber : IEquatable<BatchNumber>
    {
        /// <summary>القيمة الدلالية لرقم الدفعة.</summary>
        public string Value { get; }

        /// <summary>إنشاء رقم دفعة جديد.</summary>
        /// <param name="value">القيمة النصية للدفعة.</param>
        public BatchNumber(string value)
        {
            if (string.IsNullOrWhiteSpace(value))
                throw new ArgumentException("يجب إدخال رقم الدفعة.");
            Value = value;
        }

        public override string ToString() => Value;
        public bool Equals(BatchNumber other) => Value == other.Value;
        public override bool Equals(object? obj) => obj is BatchNumber other && Equals(other);
        public override int GetHashCode() => Value.GetHashCode();
        public static bool operator ==(BatchNumber left, BatchNumber right) => left.Equals(right);
        public static bool operator !=(BatchNumber left, BatchNumber right) => !(left == right);
    }
}
