class Experiment < ActiveRecord::Base
   has_attached_file :dstat_data,
      presence: true,
      content_type: { content_type: ["text/csv", "application/vnd.ms-excel"] },
      size: { in: 0..1.megabytes }

   has_many :experiment_details
end
