using ERP_Pro.Domain.Common.ValueObjects;

namespace ERP_Pro.Domain.Reports.ValueObjects
{
    public class ReportName : ValueObject
    {
        public string Value { get; }
        public ReportName(string value) { Value = value; }
        protected override System.Collections.Generic.IEnumerable<object> GetEqualityComponents() { yield return Value; }
    }
}