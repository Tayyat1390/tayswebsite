require 'rails_helper'

RSpec.describe "heros/show", type: :view do
  before(:each) do
    @hero = assign(:hero, Hero.create!(
      :headerImg => "",
      :bio => "MyText",
      :video => "",
      :realName => "Real Name",
      :occupation => "Occupation",
      :baseOperations => "Base Operations",
      :affiliations => "Affiliations",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Real Name/)
    expect(rendered).to match(/Occupation/)
    expect(rendered).to match(/Base Operations/)
    expect(rendered).to match(/Affiliations/)
    expect(rendered).to match(/Name/)
  end
end
