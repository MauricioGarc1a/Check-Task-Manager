require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  let(:task1) { Task.new(task: "Dummy text for the task", duedate: "2000-02-02", priority: "high") }

  # fixins:
  let(:valid_attributes) do
    {
      task: "My frist task"
      duedate: "2016-04-01"
    }
  end

  let(:invalid_attributes) do
    {
      message: "Invalid attributes :( "
    }
  end

  let(:a_task)

  describe "GET #index" do

  end



end
