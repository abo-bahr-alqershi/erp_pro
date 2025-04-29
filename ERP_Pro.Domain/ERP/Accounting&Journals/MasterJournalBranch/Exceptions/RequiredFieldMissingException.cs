using System;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch.Exceptions
{
    /// <summary>
    /// يُرمى عند نقص في الحقول الإلزامية عند الإنشاء أو التعديل.
    /// </summary>
    public class RequiredFieldMissingException : Exception
    {
        public RequiredFieldMissingException(string fieldName)
            : base($"Required field '{fieldName}' is missing.") { }
    }
}
