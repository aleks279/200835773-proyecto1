class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.datetime :date_posted, null: false
      t.datetime :date_expiry, null: false
      t.text :description

      t.timestamps null: false
    end
  end
end
