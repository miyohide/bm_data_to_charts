# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :productionlog_result do
    logging_at "2014-09-17 23:48:30"
    total_time 1.5
    view_time 1.5
    model_time 1.5
    experiment nil
  end
end
