class ChangeColumnsForTasks < ActiveRecord::Migration
  def change
      rename_column :tasks, :task, :task_description
      remove_column :tasks, :priority, :string
  end
end
