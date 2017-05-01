require 'rails_helper'

describe Photo do
  describe 'validations' do
    it { should validate_presence_of(:url) }
  end

  describe 'associations' do
    it { should belong_to(:property) }
  end
end
