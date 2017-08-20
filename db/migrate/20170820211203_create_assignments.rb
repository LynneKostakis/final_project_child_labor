class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :chores_id
      t.integer :parents_id
      t.integer :kids_id
      t.datetime :due_date
      t.boolean :completed

      t.timestamps

    end
  end
end
