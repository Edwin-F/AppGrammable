require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "user#show action" do 
    it "should successfully show the page if the user is found" do
      gram = FactoryGirl.create(:gram)
      user = FactoryGirl.create(:user)
      get :show, params: { email: user.email } 
      expect(response).to have_http_status(:success)
    end


    it "should return a 404 error if the user is not found" do 
      get :show, params: { email: 'TACOCAT@gmail.com' }
      expect(response).to have_http_status(:not_found)
    end
  end

end
