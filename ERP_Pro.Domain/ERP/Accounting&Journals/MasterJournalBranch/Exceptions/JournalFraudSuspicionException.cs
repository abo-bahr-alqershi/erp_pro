using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند الاشتباه في وجود احتيال أو تلاعب في القيد.
    /// </summary>
    public class JournalFraudSuspicionException : Exception
    {
        public JournalFraudSuspicionException(string? details = null)
            : base($"Fraud suspicion detected in journal entry.{(details != null ? " Details: " + details : "")}") { }
    }
}
