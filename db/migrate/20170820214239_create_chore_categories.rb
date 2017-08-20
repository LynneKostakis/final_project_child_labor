class CreateChoreCategories < ActiveRecord::Migration
  def change
    create_table :chore_categories do |t|
      t.integer :chores_id
      t.string :category_name

      t.timestamps

    end
  end
end
