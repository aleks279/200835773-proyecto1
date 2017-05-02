require 'rails_helper'

describe BidsController do
  before(:each) do
    allow(controller).to receive(:authenticate_user!).and_return(true)
  end

  describe 'POST #create' do

    let(:bid_params) { FactoryGirl.attributes_for :bid  }
    let(:property_type) { FactoryGirl.create :property_type }
    let(:user) { FactoryGirl.create :user }
    let(:property) { FactoryGirl.create(:property,
                                        user_id: user.id,
                                        property_type_id: property_type.id) }

    context 'when all is good' do
      it 'saves the thing' do
        expect {
          post :create, bid: bid_params, user_id: user.id, property_id: property.id
        }.to change(Bid.all, :count).by(1)
      end
    end
  end
end
