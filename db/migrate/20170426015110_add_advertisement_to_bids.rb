class AddAdvertisementToBids < ActiveRecord::Migration
  def change
    add_reference :bids, :advertisement, index: true
  end
end
