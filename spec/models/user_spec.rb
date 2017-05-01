require 'rails_helper'

describe User do
  describe 'validations' do
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:address) }
  end

  describe 'associations' do
    it { should have_many(:notifications) }
    it { should have_many(:bids) }
    it { should have_many(:properties) }
  end
end
