require 'spec_helper'

describe Experiment do
   it { should have_attached_file(:dstat_data) }
   it { should validate_attachment_presence(:dstat_data) }
   it { should validate_attachment_content_type(:dstat_data).
           allowing('text/csv', 'application/vnd.ms-excel') }
   it { should validate_attachment_size(:dstat_data).
           less_than(5.megabytes) }


   it { should have_many(:experiment_details).dependent(:destroy) }

end
