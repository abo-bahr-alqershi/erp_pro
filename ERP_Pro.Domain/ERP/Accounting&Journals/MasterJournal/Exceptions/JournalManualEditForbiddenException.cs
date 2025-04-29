using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند محاولة تحرير (تعديل يدوي) غير مصرح به لرأس القيد.
    /// Thrown when manual editing of MasterJournal is forbidden.
    /// </summary>
    public class JournalManualEditForbiddenException : ExceptionBase
    {
        public JournalManualEditForbiddenException(string message) : base(message) { }
    }
}