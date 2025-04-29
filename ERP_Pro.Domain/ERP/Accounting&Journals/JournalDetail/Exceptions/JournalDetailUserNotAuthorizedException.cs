using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند محاولة وصول مستخدم غير مصرّح
    /// </summary>
    public class JournalDetailUserNotAuthorizedException : DomainException
    {
        public JournalDetailUserNotAuthorizedException(string message) : base(message) { }
    }
}