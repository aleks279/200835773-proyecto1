class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.decimal :price
      t.string :address
      t.string :identifier

      t.timestamps null: false
    end
  end
end
