# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :experiment_detail do
    experiment nil
    cpu0 1.5
    cpu1 1.5
    cpu2 1.5
    cpu3 1.5
    cpu4 1.5
    cpu5 1.5
    cpu6 1.5
    cpu7 1.5
    memory 1.5
    dstat_date "2014-08-06 22:09:19"
  end
end
