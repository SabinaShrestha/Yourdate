FactoryGirl.define do
  
  factory :shirt do 
    size 'large'
    color 'red'
    user
  end

  factory :user do
    first_name "John"
    last_name "Doe"
    email {generate :email}
  end

  factory :user_with_shirts, :parent => :user do |user|
    shirts {build_list(:shirt, 3)}
  end

  sequence :email do |n|
    "person#{n}@example.com"
  end

end