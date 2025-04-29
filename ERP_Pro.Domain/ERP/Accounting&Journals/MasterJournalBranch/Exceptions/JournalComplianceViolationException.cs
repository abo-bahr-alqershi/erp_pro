using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند انتهاك القيد لسياسات أو قوانين الامتثال.
    /// </summary>
    public class JournalComplianceViolationException : Exception
    {
        public JournalComplianceViolationException(string? details = null)
            : base($"Journal entry compliance violation.{(details != null ? " Details: " + details : "")}") { }
    }
}
