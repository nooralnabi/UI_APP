require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :name => "Name",
        :info => "Info",
        :gender => false,
        :website => "Website",
        :person_id => ""
      ),
      Profile.create!(
        :name => "Name",
        :info => "Info",
        :gender => false,
        :website => "Website",
        :person_id => ""
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Info".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
