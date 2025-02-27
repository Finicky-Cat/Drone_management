using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using GestaoTarefas.Domain.Tasks;
using GestaoTarefas.Infrastructure.Shared;
using Microsoft.EntityFrameworkCore;
using Task = GestaoTarefas.Domain.Tasks.Task;


namespace GestaoTarefas.Infrastructure.Tasks;

public class TaskRepository : BaseRepository<Task, TaskId>, ITaskRepository
{
  public TaskRepository(GestaoTarefasDbContext context) : base(context.Tasks)
  {
  }

  public async Task<List<Task>> GetPendingAsync()
  {
    return  await this.Objs
      .Where(t => t.Status.Equals(Status.Pending)).ToListAsync();
  }

  public async Task<List<Task>> GetByRobotsAsync(List<Guid> ids)
  {
    //return tasks where the robotId is in the list of ids
    return await this.Objs
      .Where(t => ids.Contains(t.RobotId)).ToListAsync();
  }
}
