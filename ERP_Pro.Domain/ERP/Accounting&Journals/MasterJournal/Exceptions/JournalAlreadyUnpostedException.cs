using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Exceptions
{
    /// <summary>
    /// يُطلق عند محاولة إلغاء ترحيل قيد لم يتم ترحيله أو أُلغي ترحيله سابقًا.
    /// Thrown when trying to unpost a journal that is not posted.
    /// </summary>
    public class JournalAlreadyUnpostedException : ExceptionBase
    {
        public JournalAlreadyUnpostedException(string message) : base(message) { }
    }
}