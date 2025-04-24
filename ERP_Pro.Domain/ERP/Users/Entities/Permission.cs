namespace ERP_Pro.Domain.Security.Entities
{
    public class Permission : AggregateRoot<Guid>
    {
        public string PermissionCode { get; set; }
        public string PermissionName { get; set; }
        public string Description { get; set; }
    }
}