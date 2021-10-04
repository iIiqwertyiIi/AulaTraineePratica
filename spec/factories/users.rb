FactoryBot.define do
  sequence :user_mail do |n|
    "teste#{n}@teste.com"
  end

  factory :user do
    email { generate(:user_mail) }
    password { '12345678' }
    password_confirmation { '12345678' }
    username { 'Teste' }
    is_admin { true }
    age { 18 }
  end
end
