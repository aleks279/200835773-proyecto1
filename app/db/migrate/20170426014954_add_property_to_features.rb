class AddPropertyToFeatures < ActiveRecord::Migration
  def change
    add_reference :features, :property, index: true, foreign_key: true
  end
end
