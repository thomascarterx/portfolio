require 'rails_helper'

RSpec.describe "services/index", type: :view do
  before(:each) do
    assign(:services, [
      Service.create!(
        :title => "Title",
        :description => "MyText",
        :feature_image_url => "Feature Image Url"
      ),
      Service.create!(
        :title => "Title",
        :description => "MyText",
        :feature_image_url => "Feature Image Url"
      )
    ])
  end

  it "renders a list of services" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Feature Image Url".to_s, :count => 2
  end
end
