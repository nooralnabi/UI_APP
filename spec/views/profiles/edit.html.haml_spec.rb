require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :name => "MyString",
      :info => "MyString",
      :gender => false,
      :website => "MyString",
      :person_id => ""
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input[name=?]", "profile[name]"

      assert_select "input[name=?]", "profile[info]"

      assert_select "input[name=?]", "profile[gender]"

      assert_select "input[name=?]", "profile[website]"

      assert_select "input[name=?]", "profile[person_id]"
    end
  end
end
