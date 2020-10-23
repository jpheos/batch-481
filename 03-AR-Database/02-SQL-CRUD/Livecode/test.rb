require "sqlite3"
require "amazing_print"

DB = SQLite3::Database.new("tasks.db")
DB.results_as_hash = true

require_relative "task"


# p Task.find(2)

# task = Task.new(title: 'Drink a beer', description: "In a closed bar", done: 0)
# task.save # => INSERT @id

# task.title = "New title"
# task.save # => UPDATE

# p Task.find(3)

ap Task.all # => [<Task>, <Task>, ... <Task>]


task = Task.find(3)
task.destroy

ap Task.all








