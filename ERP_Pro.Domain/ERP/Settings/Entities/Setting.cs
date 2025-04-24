using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Settings.Entities
{
    public class Setting : AggregateRoot<int>
    {
        public string Key { get; set; }
        public string Value { get; set; }
        public SettingType Type { get; set; }
        public string Category { get; set; }
        public string Description { get; set; }
        public bool IsSystem { get; set; }
        public bool IsActive { get; set; }
    }
}