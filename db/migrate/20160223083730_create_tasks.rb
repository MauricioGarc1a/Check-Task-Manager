class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task
      t.string :duedate
      t.string :priority
      t.boolean :status

      t.timestamps null: false
    end
  end
end
