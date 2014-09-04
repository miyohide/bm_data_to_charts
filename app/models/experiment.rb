class Experiment < ActiveRecord::Base
   has_attached_file :dstat_data
   validates_attachment :dstat_data,
      presence: true,
      content_type: { content_type: ["text/csv", "application/vnd.ms-excel"] },
      size: { in: 0..5.megabytes }

   has_many :experiment_details, dependent: :destroy

   def memory_datas
      self.experiment_details.map { |ed| [ed.dstat_date, ed.memory] }
   end

   def cpu_datas(cpu_number)
      if cpu_number.between?(0,7)
         self.experiment_details.map { |ed| [ed.dstat_date, ed.send("cpu#{cpu_number}")] }
      else
         []
      end
   end
end

