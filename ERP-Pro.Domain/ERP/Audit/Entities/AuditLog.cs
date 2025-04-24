using ERP_Pro.Domain.Common.Entities;
using System;

namespace ERP_Pro.Domain.Audit.Entities
{
    public class AuditLog : AggregateRoot<int>
    {
        public string EntityName { get; set; }
        public int EntityId { get; set; }
        public string ActionType { get; set; }
        public int ChangedById { get; set; }
        public string ChangedByUsername { get; set; }
        public DateTime ChangedAt { get; set; }
        public string OldValues { get; set; }
        public string NewValues { get; set; }
        public string TableName { get; set; }
        public string Description { get; set; }
        public string IPAddress { get; set; }
        public string DeviceInfo { get; set; }
        public string Reference { get; set; }
    }
}