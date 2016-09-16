require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        :title => "Title",
        :author => "Author",
        :tags => "Tags",
        :feature_image_url => "Feature Image Url",
        :excerpt => "MyText",
        :content => "MyText"
      ),
      Article.create!(
        :title => "Title",
        :author => "Author",
        :tags => "Tags",
        :feature_image_url => "Feature Image Url",
        :excerpt => "MyText",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
    assert_select "tr>td", :text => "Feature Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
