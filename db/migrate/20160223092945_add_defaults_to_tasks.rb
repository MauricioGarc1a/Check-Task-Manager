class AddDefaultsToTasks < ActiveRecord::Migration
  def change
    change_column :tasks, :priority, :string, :default => "normal"
    change_column :tasks, :status, :boolean, :default => false

  end
end
