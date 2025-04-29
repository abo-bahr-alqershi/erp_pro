using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Events
{
    /// <summary>
    ///  يُطلق عند حذف رصيد مفتوح.
    /// </summary>
    /// <remarks>
    ///     <para>يتم استخدام هذا الحدث للإشارة إلى أن رصيدًا مفتوحًا قد تم حذفه من النظام.</para>
    ///     <para>يمكن استخدام هذا الحدث في سياقات مختلفة، مثل التحقق من التوافق أو الوصول إلى السجلات.</para>
    /// </remarks>
    public class OpenBalanceDeletedEvent : DomainEventBase
    {
        public long DocSequence { get; }
        public OpenBalanceDeletedEvent(long docSequence) => DocSequence = docSequence;
    }
}
