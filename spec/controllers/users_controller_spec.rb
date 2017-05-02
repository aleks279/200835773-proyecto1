require 'rails_helper'

describe UsersController do
  
  describe 'GET #show' do
    let(:user) { FactoryGirl.create :user }

    xit 'gets the user' do
      get :show, id: user.id
      expect(assigns(:user)).to eq(user)
    end
  end

end
