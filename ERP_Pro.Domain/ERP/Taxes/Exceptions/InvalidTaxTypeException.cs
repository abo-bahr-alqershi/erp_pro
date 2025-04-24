using System;

namespace ERP_Pro.Domain.Taxes.Exceptions
{
    public class InvalidTaxTypeException : Exception
    {
        public InvalidTaxTypeException(string type)
            : base($"Invalid tax type: {type}") { }
    }
}