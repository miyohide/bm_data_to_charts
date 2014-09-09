FactoryGirl.define do
  factory :experiment do
    experiment_at "2014-08-05 22:23:06"
    ruby_type "CRuby"
    note "Experiment note"
    dstat_data_file_name "file_name"
    dstat_data_content_type "text/csv"
    dstat_data_file_size 1024*1024
    dstat_data_updated_at "2014-08-05 22:23:06"
  end
end
