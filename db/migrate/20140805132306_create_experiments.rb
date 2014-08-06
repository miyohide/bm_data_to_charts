class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.datetime :experiment_at
      t.string :ruby_type
      t.text :note

      t.timestamps
    end
  end
end
