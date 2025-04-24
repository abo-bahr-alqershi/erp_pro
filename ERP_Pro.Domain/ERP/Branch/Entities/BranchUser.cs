namespace ERP_Pro.Domain.Branches.Entities
{
    public class BranchUser : AggregateRoot<Guid>
    {
        public Guid BranchId { get; set; }
        public Guid UserId { get; set; }
        public BranchUserRole Role { get; set; }
    }
}