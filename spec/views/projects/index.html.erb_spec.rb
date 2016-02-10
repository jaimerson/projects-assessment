require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      build(:project, title: 'Foo', description: 'Lorem', id: 1),
      build(:project, title: 'Bar', description: 'Lorem', id: 2)
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Foo".to_s, :count => 1
    assert_select "tr>td", :text => "Bar".to_s, :count => 1
    assert_select "tr>td", :text => "Lorem".to_s, :count => 2
  end
end
