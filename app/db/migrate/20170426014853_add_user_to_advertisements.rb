class AddUserToAdvertisements < ActiveRecord::Migration
  def change
    add_reference :advertisements, :user, index: true, foreign_key: true
  end
end
