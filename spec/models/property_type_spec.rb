require 'rails_helper'

describe PropertyType do
  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'associations' do
    it { should have_many(:properties) }
  end
end
