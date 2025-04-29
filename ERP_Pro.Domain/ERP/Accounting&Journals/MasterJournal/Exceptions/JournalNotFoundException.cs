using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند محاولة الوصول إلى رأس قيد غير موجود.
    /// Thrown when the specified MasterJournal entry cannot be found.
    /// </summary>
    public class JournalNotFoundException : ExceptionBase
    {
        public JournalNotFoundException(string message) : base(message) { }
    }
}