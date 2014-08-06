require 'spec_helper'

describe "experiments/edit" do
  before(:each) do
    @experiment = assign(:experiment, stub_model(Experiment,
      :ruby_type => "MyString",
      :note => "MyText"
    ))
  end

  it "renders the edit experiment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", experiment_path(@experiment), "post" do
      assert_select "input#experiment_ruby_type[name=?]", "experiment[ruby_type]"
      assert_select "textarea#experiment_note[name=?]", "experiment[note]"
    end
  end
end
