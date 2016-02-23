class TasksController < ApplicationController
  def index
     @tasks = Task.all
     render json: @tasks
   end

  def create
    if task = Task.create(task_params)
      render json: { task: task }
    else
      render json: {
        message: "Could not create Task",
        errors: task.errors,
      }, status: :unprocessible_entity
    end
  end

  def update
    task = Task.find(params[:id])

    if task.update(task_params)
      render json: { task: task }
    else
      render json: {
        message: "Could not update Task",
        errors: task.errors,
      }, status: :unprocessible_entity
    end
  end

  def destroy
    task = Task.find(params[:id])

    if task.destroy
      render json: { task: nil }
    else
      render json: {
        message: "Could not destroy Task, please try again",
      }, status: :unprocessible_entity
    end
  end

  private

  def task_params
    params.require(:task).permit(:task, :duedate, :priority, :status)
  end
end
