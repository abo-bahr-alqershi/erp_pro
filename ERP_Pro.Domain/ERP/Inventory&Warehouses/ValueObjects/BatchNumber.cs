// Value Object: BatchNumber
using System;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// يمثل رقم الدفعة كـ Value Object لضمان صحة القيم.
    /// </summary>
    public record BatchNumber
    {
        public string Value { get; }
        public BatchNumber(string value)
        {
            if (string.IsNullOrWhiteSpace(value))
                throw new ArgumentException("رقم الدفعة لا يمكن أن يكون فارغًا.");
            Value = value;
        }
        public override string ToString() => Value;
    }
}
