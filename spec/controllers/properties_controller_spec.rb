require 'rails_helper'

describe PropertiesController do

  let(:property_type) { FactoryGirl.create :property_type }
  let(:user) { FactoryGirl.create :user }
  let(:property) { FactoryGirl.create(:property,
                                      user_id: user.id,
                                      property_type_id: property_type.id) }

  describe 'GET #index' do
    it 'responds successfully with a HTTP 200 status code' do
      get :index
      expect(response).to be_success
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe 'GET #show' do
    it 'assigns the correct property' do
      get :show, id: property.id
      expect(assigns(:property)).to eq(property)
    end

    it 'renders success' do
      get :show, id: property.id
      expect(response).to be_success
    end
  end
end
