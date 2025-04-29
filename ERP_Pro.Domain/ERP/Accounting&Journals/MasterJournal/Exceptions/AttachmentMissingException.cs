using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند فقدان أو عدم وجود مرفق مطلوب لرأس القيد.
    /// Thrown when a required attachment for the MasterJournal is missing.
    /// </summary>
    public class AttachmentMissingException : ExceptionBase
    {
        public AttachmentMissingException(string message) : base(message) { }
    }
}