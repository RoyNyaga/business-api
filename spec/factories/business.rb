FactoryBot.define do 
  factory :business do 
    name { Faker::Company.industry }
    website { Faker::Internet.url(path: false) }
    us_state { Faker::Address.state }
  end 
end 