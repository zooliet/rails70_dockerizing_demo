class Todos::InspectJob < ApplicationJob
  queue_as :default

  # def perform(*args)
  #   # Do something later
  # end

  def perform(todo)
    priority = sleep(rand(3..5)) # expensive task
    todo.update(priority: priority)
  end
end
