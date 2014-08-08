class AddAttachmentDstatFileToExperiments < ActiveRecord::Migration
  def self.up
    change_table :experiments do |t|
      t.attachment :dstat_data
    end
  end

  def self.down
    remove_attachment :experiments, :dstat_data
  end
end
