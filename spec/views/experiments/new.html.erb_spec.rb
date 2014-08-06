require 'spec_helper'

describe "experiments/new" do
  before(:each) do
    assign(:experiment, stub_model(Experiment,
      :ruby_type => "MyString",
      :note => "MyText"
    ).as_new_record)
  end

  it "renders new experiment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", experiments_path, "post" do
      assert_select "input#experiment_ruby_type[name=?]", "experiment[ruby_type]"
      assert_select "textarea#experiment_note[name=?]", "experiment[note]"
    end
  end
end
