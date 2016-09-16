require 'rails_helper'

RSpec.describe "articles/show", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :title => "Title",
      :author => "Author",
      :tags => "Tags",
      :feature_image_url => "Feature Image Url",
      :excerpt => "MyText",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Tags/)
    expect(rendered).to match(/Feature Image Url/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
