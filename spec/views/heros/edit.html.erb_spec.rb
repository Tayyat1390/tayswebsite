require 'rails_helper'

RSpec.describe "heros/edit", type: :view do
  before(:each) do
    @hero = assign(:hero, Hero.create!(
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

  it "renders the edit hero form" do
    render

    assert_select "form[action=?][method=?]", hero_path(@hero), "post" do

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
