# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :experiment do
    experiment_at "2014-08-05 22:23:06"
    ruby_type "MyString"
    note "MyText"
  end
end
