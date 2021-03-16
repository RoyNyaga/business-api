require "rails_helper"

RSpec.describe "Businesses", type: :request do 

  context "GET /index" do 
    it "returns status 200" do 
      get "/api/v1/businesses"
      expect(response).to have_http_status(200)
    end 
  end
  
  context "POST / create" do 
    context "with valid information" do 
      it "returns status 201" do 
        post "/api/v1/businesses", params: {
          business: {
            name: Faker::Company.industry,
            website: Faker::Internet.url(path: false),
            us_state: Faker::Address.state
          }
        }
    
        expect(response).to have_http_status(201)
      end 
    end 

    context "with invalid information" do 
      it "returns status 406" do 
        post "/api/v1/businesses", params: {
          business: {
            name: "",
            website: "",
            us_state: ""
          }
        }
        expect(response).to have_http_status(406)
      end 
    end 
    
  end 
end 