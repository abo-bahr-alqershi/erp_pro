using System;

namespace ERP_Pro.Domain.Audit.Exceptions
{
    public class InvalidAuditActionException : Exception
    {
        public InvalidAuditActionException(string action)
            : base($"Invalid audit action: {action}") { }
    }
}