using ERP_Pro.Domain.Common.ValueObjects;

namespace ERP_Pro.Domain.Users.ValueObjects
{
    public class UserEmail : ValueObject
    {
        public string Value { get; }
        public UserEmail(string value) { Value = value; }
        protected override System.Collections.Generic.IEnumerable<object> GetEqualityComponents() { yield return Value; }
    }
}