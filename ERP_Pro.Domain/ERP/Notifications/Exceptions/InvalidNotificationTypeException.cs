using System;

namespace ERP_Pro.Domain.Notifications.Exceptions
{
    public class InvalidNotificationTypeException : Exception
    {
        public InvalidNotificationTypeException(string type)
            : base($"Invalid notification type: {type}") { }
    }
}