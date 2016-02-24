require 'rails_helper'


RSpec.describe TasksController, type: :controller do
  let!(:a_task) {Task.create! valid_attributes}

  # fixins:
  let(:valid_attributes) do
    {
      task: "My frist task",
      duedate: "2016-04-01"
    }
  end

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
