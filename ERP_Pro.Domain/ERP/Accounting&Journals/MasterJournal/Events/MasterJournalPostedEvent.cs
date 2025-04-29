using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Events
{
    /// <summary>
    /// يُطلق عند ترحيل رأس القيد (Post).
    /// Triggered when the MasterJournal is posted.
    /// </summary>
    public class MasterJournalPostedEvent : DomainEventBase
    {
        public MasterJournalPostedEvent(Guid masterJournalId, DateTime postDate, int postUserId)
        {
            MasterJournalId = masterJournalId;
            PostDate = postDate;
            PostUserId = postUserId;
        }

        public Guid MasterJournalId { get; }
        public DateTime PostDate { get; }
        public int PostUserId { get; }
    }
}