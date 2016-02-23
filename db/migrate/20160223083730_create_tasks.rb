class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task
      t.date :duedate
      t.string :priority, default: "normal"
      t.boolean :status, default: false

      t.timestamps null: false
    end
  end
end
