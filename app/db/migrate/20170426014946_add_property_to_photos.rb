class AddPropertyToPhotos < ActiveRecord::Migration
  def change
    add_reference :photos, :property, index: true
  end
end
