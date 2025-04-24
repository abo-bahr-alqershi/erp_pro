using System;

namespace ERP_Pro.Domain.Reports.Exceptions
{
    public class InvalidReportTypeException : Exception
    {
        public InvalidReportTypeException(string type)
            : base($"Invalid report type: {type}") { }
    }
}