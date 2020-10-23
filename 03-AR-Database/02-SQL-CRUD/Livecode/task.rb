# Implement the READ logic to find a given task (by its id)


class Task
  attr_reader :id
  attr_accessor :title, :description, :done

  def initialize(attributes = {})
    @id = attributes[:id]
    @title = attributes[:title]
    @description = attributes[:description]
    @done = attributes[:done] || 0
  end

  # Implement the READ logic to find a given task (by its id)
  def self.find(id)
    results = DB.execute("SELECT * FROM tasks WHERE id = ?", id)

    if results.any?
      return Task.new(
        id: id,
        title: results[0]['title'],
        description: results[0]['description'],
        done: results[0]['done']
      )
    else
      return nil
    end
  end

  # Implement the CREATE logic in a save instance method
  def save
    if @id
      # Update
      DB.execute("UPDATE tasks SET title = ?, description = ?, done = ? WHERE id = ?", @title, @description, @done, @id)
    else
      # Insert
      DB.execute("INSERT INTO tasks (title, description, done) VALUES (?, ?, ?)", @title, @description, @done)
      @id = DB.last_insert_row_id
    end
  end

  # Implement the READ logic to retrieve all tasks (what type of method is it?)
  def self.all
    results = DB.execute('SELECT * FROM tasks')
    # [{}, {}, {}, ... {}]
    # [<Task>, <Task>, ... <Task>]
    results.map do |result|
      Task.new(
        id: result['id'],
        title: result['title'],
        description: result['description'],
        done: result['done']
      )
    end
  end

  # Implement the DESTROY logic on a task
  def destroy
    DB.execute("DELETE FROM tasks WHERE id = ?", @id)
  end
end
