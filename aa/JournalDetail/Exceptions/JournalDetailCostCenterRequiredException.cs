using System;
using Domain.Common;

namespace Accounting.Domain.Journals.Exceptions
{
    /// <summary>
    /// استثناء عند غياب رقم مركز التكلفة المطلوب
    /// </summary>
    public class JournalDetailCostCenterRequiredException : DomainException
    {
        public JournalDetailCostCenterRequiredException(string message) : base(message) { }
    }
}