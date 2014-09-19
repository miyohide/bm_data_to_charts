class ExperimentDetail < ActiveRecord::Base
  belongs_to :experiment

  def total_cpu_data
     self.cpu0 + self.cpu1 + self.cpu2 + self.cpu3 + self.cpu4 + self.cpu5 + self.cpu6 + self.cpu7
  end
end
