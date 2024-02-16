FactoryBot.define do
  factory :normal_customer, class: 'Customer' do
    sequence(:name) { |n| "normal#{n}" }
    sequence(:email) { |n| "normal#{n}@test.com" }
    password { 'password' }
    status { 0 }
  end

  factory :withdrawn_customer, class: 'Customer' do
    sequence(:name) { |n| "withdrawn#{n}" }
    sequence(:email) { |n| "withdrawn#{n}@test.com" }
    password { 'password' }
    status { 1 }
  end

  factory :banned_customer, class: 'Customer' do
    sequence(:name) { |n| "banned#{n}" }
    sequence(:email) { |n| "banned#{n}@test.com" }
    password { 'password' }
    status { 2 }
  end
end

def create_mulitple_custoomers(user, time = 5)
  raise "cannot create #{user} because it is not symbol" unless user.is_a(Symbol)

  time.each do |_|
    FactoryBot.create(user)
  end
end
