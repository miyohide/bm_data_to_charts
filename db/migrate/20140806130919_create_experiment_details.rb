class CreateExperimentDetails < ActiveRecord::Migration
  def change
    create_table :experiment_details do |t|
      t.references :experiment, index: true
      t.float :cpu0
      t.float :cpu1
      t.float :cpu2
      t.float :cpu3
      t.float :cpu4
      t.float :cpu5
      t.float :cpu6
      t.float :cpu7
      t.float :memory
      t.datetime :dstat_date

      t.timestamps
    end
  end
end
