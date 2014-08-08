class AddAttachmentDstatFileToExperiments < ActiveRecord::Migration
  def self.up
    change_table :experiments do |t|
      t.attachment :dstat_file
    end
  end

  def self.down
    remove_attachment :experiments, :dstat_file
  end
end
