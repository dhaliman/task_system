require 'test_helper'

class TaskTest < ActiveSupport::TestCase

  test "task can have a name and a description" do
    @task = Task.new(name: 'Task name', description: 'Task description')
    assert @task.valid?, 'Task should have a name and a description'
  end

end
