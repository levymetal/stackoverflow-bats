class CreateBats < ActiveRecord::Migration
  def change
    create_table :bats do |t|
      t.string :name
      t.integer :manufacturer_id

      t.timestamps
    end
  end
end
