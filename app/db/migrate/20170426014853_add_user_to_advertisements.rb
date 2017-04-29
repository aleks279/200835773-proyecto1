class AddUserToAdvertisements < ActiveRecord::Migration
  def change
    add_reference :advertisements, :user, index: true
  end
end
