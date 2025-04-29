using ERP_Pro.Domain.Common.Primitives;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    /// <summary>
    /// يمثل رقم المستند كـ ValueObject
    /// </summary>
    public sealed class DocumentNumber : ValueObject
    {
        public long Value { get; }
        public DocumentNumber(long value)
        {
            if (value <= 0)
                throw new ArgumentException("رقم المستند يجب أن يكون أكبر من صفر.");
            Value = value;
        }
        protected override IEnumerable<object> GetEqualityComponents()
        {
            yield return Value;
        }
        public override string ToString() => Value.ToString();
    }
}
