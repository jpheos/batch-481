require 'amazing_print'
require_relative 'task'
require_relative 'task_repository'
require_relative 'tasks_controller'

task1 = Task.new("faut faire un truc")
task2 = Task.new("ménage")
task3 = Task.new("vaiselle")


repo = TaskRepository.new
repo.add(task1)
repo.add(task2)
repo.add(task3)
task1.mark_as_done!

controller = TasksController.new(repo)


controller.create
ap "----"
controller.list
