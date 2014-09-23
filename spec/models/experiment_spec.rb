require 'spec_helper'

describe Experiment do
   it { should have_attached_file(:dstat_data) }
   it { should validate_attachment_presence(:dstat_data) }
   it { should validate_attachment_content_type(:dstat_data).
           allowing('text/csv', 'application/vnd.ms-excel') }
   it { should validate_attachment_size(:dstat_data).
           less_than(5.megabytes) }


   it { should have_many(:experiment_details).dependent(:destroy) }

   describe "use valid sample data" do
      before do
         @experiment = FactoryGirl.create(:experiment)
      end

      it { expect(@experiment.attach_file_path).to eq "#{Rails.root}/public/system/experiments/dstat_data/000/000/#{"%03d" % @experiment.id}/original/#{@experiment.dstat_data_file_name}" }

   end
end
