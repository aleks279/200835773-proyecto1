class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :topic
      t.text :message

      t.timestamps null: false
    end
  end
end
