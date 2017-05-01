require 'rails_helper'

describe Bid do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:property) }
  end
end
