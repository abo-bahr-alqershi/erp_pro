using ERP_Pro.Domain.Common.Entities;
using System;

namespace ERP_Pro.Domain.Notifications.Entities
{
    public class Notification : AggregateRoot<int>
    {
        public string Title { get; set; }
        public string Message { get; set; }
        public int? UserId { get; set; }
        public NotificationType NotificationType { get; set; }
        public DateTime CreatedOn { get; set; }
        public bool IsRead { get; set; }
        public string Channel { get; set; }
        public string Reference { get; set; }
        public string Description { get; set; }
    }
}