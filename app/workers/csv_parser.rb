class CsvParser
   include Sidekiq::Worker

   def perform(experiment_id)
      CSV.foreach(Experiment.find(experiment_id).dstat_data.path) do |row|
         next if row.size < 50 || row[0] !~ /^\d/
         dstat_date = DateTime.strptime(row[0], "%d-%m %H:%M:%S")

         ExperimentDetail.create(
            experiment_id: experiment_id,
            dstat_date: dstat_date,
            cpu0: row[1].to_f,
            cpu1: row[7].to_f,
            cpu2: row[13].to_f,
            cpu3: row[19].to_f,
            cpu4: row[25].to_f,
            cpu5: row[31].to_f,
            cpu6: row[37].to_f,
            cpu7: row[43].to_f,
            memory: row[49].to_f/(1024*1024))
      end

   end
end

