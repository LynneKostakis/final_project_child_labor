class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :kid_name

      t.timestamps

    end
  end
end
