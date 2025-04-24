namespace ERP_Pro.Domain.Taxes.Exceptions
{
    public class InvalidTaxAssignmentException : Exception
    {
        public InvalidTaxAssignmentException(string message) : base(message) { }
    }
}