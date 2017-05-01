require 'rails_helper'

describe Notification do
  describe 'associations' do
    it { should belong_to(:user) }
  end
end
