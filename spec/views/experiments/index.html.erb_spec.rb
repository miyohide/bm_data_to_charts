require 'spec_helper'

describe "experiments/index" do
  before(:each) do
    assign(:experiments, [
      stub_model(Experiment,
        :ruby_type => "Ruby Type",
        :note => "MyText"
      ),
      stub_model(Experiment,
        :ruby_type => "Ruby Type",
        :note => "MyText"
      )
    ])
  end

  it "renders a list of experiments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ruby Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
