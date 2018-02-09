require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :name => "Name",
      :info => "Info",
      :gender => false,
      :website => "Website",
      :person_id => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Info/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(//)
  end
end
