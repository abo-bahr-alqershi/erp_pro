namespace ERP_Pro.Domain.Inventory.Exceptions
{
    public class InvalidInventoryMovementException : Exception
    {
        public InvalidInventoryMovementException(string message) : base(message) { }
    }
}