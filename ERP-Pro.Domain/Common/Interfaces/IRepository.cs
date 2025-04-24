using System.Collections.Generic;
using System.Threading.Tasks;

namespace ERP_Pro.Domain.Common.Interfaces
{
    public interface IRepository<TEntity, TId> where TEntity : Entity<TId>
    {
        Task<TEntity> GetByIdAsync(TId id);
        Task<IReadOnlyList<TEntity>> GetAllAsync();
        Task AddAsync(TEntity entity);
        Task UpdateAsync(TEntity entity);
        Task DeleteAsync(TEntity entity);
    }
}