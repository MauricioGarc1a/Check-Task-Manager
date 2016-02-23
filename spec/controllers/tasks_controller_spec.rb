require 'rails_helper'


RSpec.describe TasksController, type: :controller do
  let(:task) { Task.new(task: "Dummy text for the task", duedate: "2000-02-02", priority: "high") }




  describe "DELETE destroy" do
       it "destroys the requested task" do
         task = Task.create! valid_attributes
          expect {

            delete :destroy, {:id => task.to_param}, valid_session
          }.to change(Task, :count).by(-1)
       end

      it "redirects to the tasks list" do
        task = Task.create! valid_attributes
        delete :destroy, {:id => task.to_param}, valid_session
        response.should redirect_to(tasks_url)
      end
  end
