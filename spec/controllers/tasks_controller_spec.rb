require 'rails_helper'


RSpec.describe TasksController, type: :controller do
  let(:task) { Task.new(task: "Dummy text for the task", duedate: "2016-02-28", priority: "high") }
describe "GET #index" do
    it "gives a JSON of all tasks" do
      get :index, format: :json
    end
  end



end
