require 'rails_helper'


RSpec.describe TasksController, type: :controller do
  let(:task) { Task.new(task: "Buy Some food", duedate: "2017-01-01", status: false) }

  
  describe "GET #index" do
    it "gives a JSON of all tasks" do
      get :index, format: :json
    end
  end


  describe "#create" do
    context "with valid params" do
      it "creates a new Task" do
          expect {
            post :create, {task: valid_attributes}
          }.to change(Task, :count).by(1)
      end
    end
  end



end
