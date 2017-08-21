class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :parent_name
      t.integer :family_id

      t.timestamps

    end
  end
end
