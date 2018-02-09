require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :name => "MyString",
      :info => "MyString",
      :gender => false,
      :website => "MyString",
      :person_id => ""
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input[name=?]", "profile[name]"

      assert_select "input[name=?]", "profile[info]"

      assert_select "input[name=?]", "profile[gender]"

      assert_select "input[name=?]", "profile[website]"

      assert_select "input[name=?]", "profile[person_id]"
    end
  end
end
