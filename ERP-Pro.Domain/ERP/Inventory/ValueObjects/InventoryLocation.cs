using ERP_Pro.Domain.Common.ValueObjects;

namespace ERP_Pro.Domain.Inventory.ValueObjects
{
    public class InventoryLocation : ValueObject
    {
        public string Value { get; }
        public InventoryLocation(string value) { Value = value; }
        protected override System.Collections.Generic.IEnumerable<object> GetEqualityComponents() { yield return Value; }
    }
}