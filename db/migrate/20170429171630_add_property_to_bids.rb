class AddPropertyToBids < ActiveRecord::Migration
  def change
    add_reference :bids, :property, index: true
  end
end
