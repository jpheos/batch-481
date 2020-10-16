require 'amazing_print'
require_relative 'router'
require_relative 'task_repository'
require_relative 'tasks_controller'

repo = TaskRepository.new
controller = TasksController.new(repo)

router = Router.new(controller)
router.run
