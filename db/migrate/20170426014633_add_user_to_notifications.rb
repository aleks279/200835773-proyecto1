class AddUserToNotifications < ActiveRecord::Migration
  def change
    add_reference :notifications, :user, index: true
  end
end
