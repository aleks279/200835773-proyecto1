require 'rails_helper'

describe Property do
  describe 'associations' do
    it { should belong_to(:user) }
    xit { should have_one(:property_type) }
    it { should have_many(:photos) }
    it { should have_many(:features) }
    it { should have_many(:bids) }
  end
end
