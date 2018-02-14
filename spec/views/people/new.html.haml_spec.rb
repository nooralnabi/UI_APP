require 'rails_helper'

RSpec.describe "people/new", type: :view do
  before(:each) do
    assign(:person, Person.new(
      :name => "MyString",
      :email => "MyString",
      :phone_number => "MyString",
      :active => false
    ))
  end

  it "renders new person form" do
    render

    assert_select "form[action=?][method=?]", people_path, "post" do

      assert_select "input[name=?]", "person[name]"

      assert_select "input[name=?]", "person[email]"

      assert_select "input[name=?]", "person[phone_number]"

      assert_select "input[name=?]", "person[active]"
    end
  end
end
