class AddPropertyToAdvertisement < ActiveRecord::Migration
  def change
    add_reference :advertisements, :property, index: true
  end
end
