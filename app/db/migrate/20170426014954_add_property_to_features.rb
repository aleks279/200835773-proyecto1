class AddPropertyToFeatures < ActiveRecord::Migration
  def change
    add_reference :features, :property, index: true
  end
end
