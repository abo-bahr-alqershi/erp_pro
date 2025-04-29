// معرف باركود الصنف كـ ValueObject
using System;
using ERP_Pro.Domain.Common.Primitives;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// معرف فريد لباركود الصنف (ItemBarcodeId) كـ ValueObject.
    /// </summary>
    public sealed record ItemBarcodeId(Guid Value)
    {
        public static ItemBarcodeId NewId() => new(Guid.NewGuid());
        public override string ToString() => Value.ToString();
    }

    /// <summary>
    /// يمثل رقم الباركود كـ ValueObject لضمان صحة القيم.
    /// </summary>
    public record BarcodeNumber
    {
        public string Value { get; }
        public BarcodeNumber(string value)
        {
            if (string.IsNullOrWhiteSpace(value))
                throw new ArgumentException("رقم الباركود لا يمكن أن يكون فارغًا.");
            Value = value;
        }
        public override string ToString() => Value;
    }
}
