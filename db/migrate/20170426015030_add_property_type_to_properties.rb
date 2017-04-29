class AddPropertyTypeToProperties < ActiveRecord::Migration
  def change
    add_reference :properties, :property_type, index: true
  end
end
