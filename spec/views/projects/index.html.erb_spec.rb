require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :title => "Title",
        :tags => "Tags",
        :feature_image_url => "Feature Image Url",
        :description => "MyText",
        :problem => "MyText",
        :solution => "MyText",
        :client => "Client",
        :demo_url => "Demo Url"
      ),
      Project.create!(
        :title => "Title",
        :tags => "Tags",
        :feature_image_url => "Feature Image Url",
        :description => "MyText",
        :problem => "MyText",
        :solution => "MyText",
        :client => "Client",
        :demo_url => "Demo Url"
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
    assert_select "tr>td", :text => "Feature Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Client".to_s, :count => 2
    assert_select "tr>td", :text => "Demo Url".to_s, :count => 2
  end
end
