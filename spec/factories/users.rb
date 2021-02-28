FactoryBot.define do
  factory :user do
    login_id { 'test01' }
    password { 'password01' }
    email { 'test01@example.com' }
  end
end