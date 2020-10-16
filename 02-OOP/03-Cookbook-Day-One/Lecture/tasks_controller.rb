require_relative 'tasks_view'
require_relative 'task'

class TasksController
  def initialize(repository)
    @repository = repository
    @view = TasksView.new
  end

  def list
    display_tasks
  end

  def mark_as_done
    display_tasks
    index = @view.index
    task = @repository.find(index)
    task.mark_as_done!
  end

  def destroy
    display_tasks
    index = @view.index
    @repository.remove(index)
  end

  def create
    description = @view.description
    task = Task.new(description)
    @repository.add(task)
  end

  private

  def display_tasks
    # les récupérer
    # les donner à ma vue
    @tasks = @repository.all
    @view.display_all(@tasks)
  end
end
