using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Domain.FixedAssets.Events
{
    public class FixedAssetCreatedEvent : DomainEventBase
    {
        public int FixedAssetId { get; }
        public FixedAssetCreatedEvent(int fixedAssetId) => FixedAssetId = fixedAssetId;
    }
}