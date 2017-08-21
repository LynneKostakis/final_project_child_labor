class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :kid_name
      t.integer :family_id

      t.timestamps

    end
  end
end
