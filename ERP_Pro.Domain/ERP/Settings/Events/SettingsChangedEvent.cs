using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Domain.Settings.Events
{
    public class SettingChangedEvent : DomainEventBase
    {
        public int SettingId { get; }
        public SettingChangedEvent(int settingId) => SettingId = settingId;
    }
}