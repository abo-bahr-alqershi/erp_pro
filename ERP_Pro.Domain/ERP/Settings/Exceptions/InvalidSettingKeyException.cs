using System;

namespace ERP_Pro.Domain.Settings.Exceptions
{
    public class InvalidSettingKeyException : Exception
    {
        public InvalidSettingKeyException(string key)
            : base($"Invalid setting key: {key}") { }
    }
}