class CreateProductionlogResults < ActiveRecord::Migration
  def change
    create_table :productionlog_results do |t|
      t.datetime :logging_at
      t.float :total_time
      t.float :view_time
      t.float :model_time
      t.references :experiment, index: true

      t.timestamps
    end
  end
end
