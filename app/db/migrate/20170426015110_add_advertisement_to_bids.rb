class AddAdvertisementToBids < ActiveRecord::Migration
  def change
    add_reference :bids, :advertisement, index: true, foreign_key: true
  end
end
