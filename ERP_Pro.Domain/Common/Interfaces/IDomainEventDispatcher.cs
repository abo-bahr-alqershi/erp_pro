using System.Threading.Tasks;
using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Domain.Common.Interfaces
{
    public interface IDomainEventDispatcher
    {
        Task DispatchAsync(IDomainEvent domainEvent);
    }
}