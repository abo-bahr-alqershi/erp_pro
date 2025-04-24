namespace ERP_Pro.Domain.Banking.Exceptions
{
    public class InvalidBankAccountException : Exception
    {
        public InvalidBankAccountException(string message) : base(message) { }
    }
}