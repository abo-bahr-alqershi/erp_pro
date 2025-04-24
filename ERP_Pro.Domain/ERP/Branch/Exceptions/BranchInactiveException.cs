namespace ERP_Pro.Domain.Branches.Exceptions
{
    public class BranchInactiveException : Exception
    {
        public BranchInactiveException(string message) : base(message) { }
    }
}