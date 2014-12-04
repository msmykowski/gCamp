class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.boolean :complete, default: false, null: false
      t.date :due_date

      t.timestamps
    end
  end
end
