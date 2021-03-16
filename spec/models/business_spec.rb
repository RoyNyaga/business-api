require 'rails_helper'

RSpec.describe Business, type: :model do
  context "during creation" do 
    it "must be valid" do 
      expect(create(:business)).to be_valid
    end 
  end 

  context "Validating presence" do
    let(:business) { build(:business) }
    context "name" do 
      it "must be present" do 
        business.name = ""
        expect(business).not_to be_valid
      end
    end 

    context "website" do 
      it "must be present" do 
        business.website = ""
        expect(business).not_to be_valid
      end 
    end

    context "us state" do 
      it "must be present" do 
        business.us_state = ""
        expect(business).not_to be_valid
      end 
    end 
  end 

  context "validating uniqueness" do
    let(:business) {create(:business)}
    context "name" do 
      it "must be unique" do 
        expect(build(:business, name: business.name)).not_to be_valid
      end 
    end 
  end 
end