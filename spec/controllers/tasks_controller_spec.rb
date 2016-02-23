require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  let(:task) { Task.new(task: "Dummy text for the task", duedate: "2016-02-28", priority: "high") }

  # # fixins:
  # let(:valid_attributes) do
  #   {
  #     task: "My frist task",
  #     duedate: "2016-04-01",
  #     priority: "high"
  #   }
  # end
  #
  # let(:invalid_attributes) do
  #   {
  #     task: "",
  #     duedate: "2016-02-11",
  #     priority: "normal"
  #   }
  # end
  #
  #

  describe "GET #index" do
    it "gives a JSON of all tasks" do
      get :index, format: :json
    end
  end



end
