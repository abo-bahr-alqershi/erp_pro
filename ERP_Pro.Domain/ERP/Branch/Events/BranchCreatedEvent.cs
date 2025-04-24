namespace ERP_Pro.Domain.Branches.Events
{
    public class BranchCreatedEvent : IDomainEvent
    {
        public Guid BranchId { get; }
        public BranchCreatedEvent(Guid branchId) => BranchId = branchId;
    }
}