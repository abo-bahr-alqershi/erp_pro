using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.Events
{
    /// <summary>
    /// يُطلق عند إنشاء أو معالجة قيد دوري (Periodical Journal).
    /// Triggered on periodic (recurring) journal entry operations.
    /// </summary>
    public class MasterJournalPeriodicEvent : DomainEventBase
    {
        public MasterJournalPeriodicEvent(Guid masterJournalId, DateTime periodDate, int periodType)
        {
            MasterJournalId = masterJournalId;
            PeriodDate = periodDate;
            PeriodType = periodType;
        }

        public Guid MasterJournalId { get; }
        public DateTime PeriodDate { get; }
        public int PeriodType { get; }
    }
}