FactoryBot.define do
  factory :admin, class: 'Admin' do
    sequence(:email) { |n| "normal#{n}@test.com" }
    password { 'password' }
  end
end

def create_mulitple_custoomers(user, time = 5)
  raise "cannot create #{user} because it is not symbol" unless user.is_a(Symbol)

  time.each do |_|
    FactoryBot.create(user)
  end
end
