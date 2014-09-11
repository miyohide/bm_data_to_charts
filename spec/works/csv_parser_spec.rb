require 'spec_helper'

describe CsvParser do
   let(:worker) { CsvParser.new }

   describe "#perform" do
      context "if CSV data is valid," do
         before do
            @experiment = FactoryGirl.create(:experiment)
            allow(CSV).to receive(:foreach).and_yield("30-08 18:12:44,11.983,0.634,87.338,0.031,0.000,0.014,3.452,0.262,96.092,0.193,0.000,0.002,3.118,0.198,96.553,0.130,0.000,0.001,9.537,0.492,89.762,0.208,0.000,0.001,2.924,0.129,96.908,0.039,0.000,0.001,2.997,0.304,96.672,0.026,0.0,0.000,2.326,0.136,97.366,0.171,0.000,0.000,2.348,0.149,97.482,0.021,0.000,0.000,1371693056.0,340856832.0,2267140096.0,12441083904.0".split(","))
            worker.perform(@experiment.id)
         end

         it "create ExperimentDetail record." do
            expect(@experiment.experiment_details.size).to eq 1
         end
      end
   end
end
