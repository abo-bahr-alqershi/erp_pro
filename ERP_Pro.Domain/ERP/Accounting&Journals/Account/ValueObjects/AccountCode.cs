using ERP_Pro.Domain.Common.Primitives;

namespace ERP_Pro.Domain.Accounting.ValueObjects
{
    public class AccountCode : ValueObject
    {
        public string Value { get; }

        public AccountCode(string value)
        {
            if (string.IsNullOrWhiteSpace(value))
                throw new ArgumentException("Account code cannot be empty.");

            Value = value;
        }

        protected override IEnumerable<object> GetEqualityComponents()
        {
            yield return Value;
        }

        public override string ToString() => Value;
    }
}