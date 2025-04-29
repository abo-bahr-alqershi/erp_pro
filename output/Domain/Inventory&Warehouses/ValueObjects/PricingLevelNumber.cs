using ERP_Pro.Domain.Common.Primitives;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// يمثل رقم مستوى التسعير كـ ValueObject
    /// </summary>
    public sealed class PricingLevelNumber : ValueObject
    {
        public int Value { get; }
        public PricingLevelNumber(int value)
        {
            if (value <= 0)
                throw new ArgumentException("رقم المستوى يجب أن يكون أكبر من صفر.");
            Value = value;
        }
        protected override IEnumerable<object> GetEqualityComponents()
        {
            yield return Value;
        }
        public override string ToString() => Value.ToString();
    }
}
