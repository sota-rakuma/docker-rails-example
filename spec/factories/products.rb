FactoryBot.define do
  factory :product, class: 'Product' do
    sequence(:name, &:to_s)
    sequence(:description) { |n| "this is No.#{n}" }
    sequence(:price) { |n| (n * rand(1000)).to_s }
    sequence(:stock) { |n| (n * rand(100)).to_s }
  end
end
