require 'rails_helper'

describe Feature do
  describe 'validations' do
    it { should validate_presence_of(:description) }
  end

  describe 'associations' do
    it { should belong_to(:property) }
  end
end
