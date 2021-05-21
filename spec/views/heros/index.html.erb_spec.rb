require 'rails_helper'

RSpec.describe "heros/index", type: :view do
  before(:each) do
    assign(:heros, [
      Hero.create!(
        :headerImg => "",
        :bio => "MyText",
        :video => "",
        :realName => "Real Name",
        :occupation => "Occupation",
        :baseOperations => "Base Operations",
        :affiliations => "Affiliations",
        :name => "Name"
      ),
      Hero.create!(
        :headerImg => "",
        :bio => "MyText",
        :video => "",
        :realName => "Real Name",
        :occupation => "Occupation",
        :baseOperations => "Base Operations",
        :affiliations => "Affiliations",
        :name => "Name"
      )
    ])
  end

  it "renders a list of heros" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Real Name".to_s, :count => 2
    assert_select "tr>td", :text => "Occupation".to_s, :count => 2
    assert_select "tr>td", :text => "Base Operations".to_s, :count => 2
    assert_select "tr>td", :text => "Affiliations".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
