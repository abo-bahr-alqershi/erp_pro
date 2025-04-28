using ERP_Pro.Domain.Common.Primitives;

namespace ERP_Pro.Domain.Accounting.ValueObjects
{
    public class CurrencyCode : ValueObject
    {
        public string Value { get; }
        public CurrencyCode(string value)
        {
            if (string.IsNullOrWhiteSpace(value)) throw new ArgumentException("Currency code cannot be empty.");
            Value = value;
        }
        protected override IEnumerable<object> GetEqualityComponents()
        {
            yield return Value;
        }
        public override string ToString() => Value;
    }
}