# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :experiment_detail do
    association :experiment
    cpu0 0.0
    cpu1 1.1
    cpu2 2.2
    cpu3 3.3
    cpu4 4.4
    cpu5 5.5
    cpu6 6.6
    cpu7 7.7
    memory 8.8
    dstat_date "2014-08-06 22:09:19"
  end
end
