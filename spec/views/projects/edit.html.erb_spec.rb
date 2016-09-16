require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :title => "MyString",
      :tags => "MyString",
      :feature_image_url => "MyString",
      :description => "MyText",
      :problem => "MyText",
      :solution => "MyText",
      :client => "MyString",
      :demo_url => "MyString"
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input#project_title[name=?]", "project[title]"

      assert_select "input#project_tags[name=?]", "project[tags]"

      assert_select "input#project_feature_image_url[name=?]", "project[feature_image_url]"

      assert_select "textarea#project_description[name=?]", "project[description]"

      assert_select "textarea#project_problem[name=?]", "project[problem]"

      assert_select "textarea#project_solution[name=?]", "project[solution]"

      assert_select "input#project_client[name=?]", "project[client]"

      assert_select "input#project_demo_url[name=?]", "project[demo_url]"
    end
  end
end
