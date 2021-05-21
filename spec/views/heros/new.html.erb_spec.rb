require 'rails_helper'

RSpec.describe "heros/new", type: :view do
  before(:each) do
    assign(:hero, Hero.new(
      :headerImg => "",
      :bio => "MyText",
      :video => "",
      :realName => "MyString",
      :occupation => "MyString",
      :baseOperations => "MyString",
      :affiliations => "MyString",
      :name => "MyString"
    ))
  end

  it "renders new hero form" do
    render

    assert_select "form[action=?][method=?]", heros_path, "post" do

      assert_select "input[name=?]", "hero[headerImg]"

      assert_select "textarea[name=?]", "hero[bio]"

      assert_select "input[name=?]", "hero[video]"

      assert_select "input[name=?]", "hero[realName]"

      assert_select "input[name=?]", "hero[occupation]"

      assert_select "input[name=?]", "hero[baseOperations]"

      assert_select "input[name=?]", "hero[affiliations]"

      assert_select "input[name=?]", "hero[name]"
    end
  end
end
