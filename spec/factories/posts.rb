FactoryBot.define do
  factory :post do
    user_id { 1 }
    content { "MyText" }
    picture { "MyString" }
  end
end
