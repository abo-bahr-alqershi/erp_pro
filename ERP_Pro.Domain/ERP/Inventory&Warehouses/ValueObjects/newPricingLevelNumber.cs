using System;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// رقم مستوى التسعير - معرف فريد لكل مستوى تسعير في النظام.
    /// </summary>
    public readonly struct PricingLevelNumber : IEquatable<PricingLevelNumber>
    {
        /// <summary>القيمة الدلالية لرقم مستوى التسعير.</summary>
        public int Value { get; }

        /// <summary>إنشاء رقم مستوى تسعير جديد.</summary>
        /// <param name="value">القيمة الرقمية للمستوى.</param>
        public PricingLevelNumber(int value)
        {
            if (value <= 0)
                throw new ArgumentException("يجب أن يكون رقم مستوى التسعير أكبر من الصفر.");
            Value = value;
        }

        public override string ToString() => Value.ToString();
        public bool Equals(PricingLevelNumber other) => Value == other.Value;
        public override bool Equals(object? obj) => obj is PricingLevelNumber other && Equals(other);
        public override int GetHashCode() => Value.GetHashCode();
        public static bool operator ==(PricingLevelNumber left, PricingLevelNumber right) => left.Equals(right);
        public static bool operator !=(PricingLevelNumber left, PricingLevelNumber right) => !(left == right);
    }
}
