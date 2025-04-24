using System.Threading.Tasks;

namespace ERP_Pro.Domain.Common.Interfaces
{
    public interface IUnitOfWork
    {
        Task<int> SaveChangesAsync();
    }
}