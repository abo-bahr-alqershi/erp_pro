using ERP_Pro.Domain.Common.ValueObjects;

namespace ERP_Pro.Domain.Settings.ValueObjects
{
    public class SettingKey : ValueObject
    {
        public string Value { get; }
        public SettingKey(string value) { Value = value; }
        protected override System.Collections.Generic.IEnumerable<object> GetEqualityComponents() { yield return Value; }
    }
}