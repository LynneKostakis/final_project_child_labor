class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
      t.string :chore_name
      t.integer :chore_categories_id
      t.float :chore_value

      t.timestamps

    end
  end
end
