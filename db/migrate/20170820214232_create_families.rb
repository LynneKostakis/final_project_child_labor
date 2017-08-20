class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.integer :kids_id
      t.integer :parents_id
      t.string :family_name

      t.timestamps

    end
  end
end
