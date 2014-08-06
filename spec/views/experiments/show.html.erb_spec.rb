require 'spec_helper'

describe "experiments/show" do
  before(:each) do
    @experiment = assign(:experiment, stub_model(Experiment,
      :ruby_type => "Ruby Type",
      :note => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ruby Type/)
    rendered.should match(/MyText/)
  end
end
