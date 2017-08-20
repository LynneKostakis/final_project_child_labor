class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.integer :kids_id
      t.integer :parents_id

      t.timestamps

    end
  end
end
