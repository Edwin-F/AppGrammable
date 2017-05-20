require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "user#show action" do 
    it "should successfully show the page if the user is found" do
      gram = FactoryGirl.create(:gram)
      #user = FactoryGirl.create(:user)
      email_array = gram.user.email.split(".")
      get :show, params: { email: email_array[0],
       format: email_array[1] } 
      #get :show, params: {id: gram.user}

      puts gram.user.email
      expect(response).to have_http_status(:success)
    end


    it "should return a 404 error if the user is not found" do 
      get :show, params: { email: 'TACOCAT@gmail.com' }
      #get :show, params: {id: 'TACOCAT@gmail.com' }
      expect(response).to have_http_status(:not_found)
    end
  end

end
