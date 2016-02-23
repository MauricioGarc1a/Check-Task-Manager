class ChangeStringToDate < ActiveRecord::Migration
  def up
    change_column :tasks, :duedate, :string
  end

  def down
    change_column :tasks, :duedate, :date
  end
end
