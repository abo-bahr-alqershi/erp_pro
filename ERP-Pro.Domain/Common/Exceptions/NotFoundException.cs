using System;

namespace ERP_Pro.Domain.Common.Exceptions
{
    public class NotFoundException : Exception
    {
        public NotFoundException(string message) : base(message) { }
    }
}