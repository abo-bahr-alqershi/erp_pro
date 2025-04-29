using System;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// رقم المستند المخزني - معرف فريد لكل مستند حركة أو جرد أو تسعير.
    /// </summary>
    public readonly struct DocumentNumber : IEquatable<DocumentNumber>
    {
        /// <summary>القيمة الدلالية لرقم المستند.</summary>
        public long Value { get; }

        /// <summary>إنشاء رقم مستند جديد.</summary>
        /// <param name="value">القيمة الرقمية للمستند.</param>
        public DocumentNumber(long value)
        {
            if (value <= 0)
                throw new ArgumentException("يجب أن يكون رقم المستند أكبر من الصفر.");
            Value = value;
        }

        public override string ToString() => Value.ToString();
        public bool Equals(DocumentNumber other) => Value == other.Value;
        public override bool Equals(object? obj) => obj is DocumentNumber other && Equals(other);
        public override int GetHashCode() => Value.GetHashCode();
        public static bool operator ==(DocumentNumber left, DocumentNumber right) => left.Equals(right);
        public static bool operator !=(DocumentNumber left, DocumentNumber right) => !(left == right);
    }
}
