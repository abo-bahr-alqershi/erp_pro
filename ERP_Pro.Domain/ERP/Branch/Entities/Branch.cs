namespace ERP_Pro.Domain.Branches.Entities
{
    public class Branch : AggregateRoot<Guid>
    {
        public string BranchCode { get; set; }
        public string BranchName { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public bool IsActive { get; set; }
    }
}