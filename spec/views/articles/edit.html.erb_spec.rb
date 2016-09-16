require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :title => "MyString",
      :author => "MyString",
      :tags => "MyString",
      :feature_image_url => "MyString",
      :excerpt => "MyText",
      :content => "MyText"
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input#article_title[name=?]", "article[title]"

      assert_select "input#article_author[name=?]", "article[author]"

      assert_select "input#article_tags[name=?]", "article[tags]"

      assert_select "input#article_feature_image_url[name=?]", "article[feature_image_url]"

      assert_select "textarea#article_excerpt[name=?]", "article[excerpt]"

      assert_select "textarea#article_content[name=?]", "article[content]"
    end
  end
end
