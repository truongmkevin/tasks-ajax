require 'test_helper'

class UserTaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save task without description" do
    user_task = UserTask.new
    user_task.due = Date.new(2015, 1, 1)
    assert_not user_task.save, "Saved the task without a description"
  end

  test "should not save task without date" do
    user_task = UserTask.new
    user_task.description = "Test Description"
    assert_not user_task.save, "Saved the task without a date"
  end
end
