require 'rails_helper'

RSpec.describe "services/edit", type: :view do
  before(:each) do
    @service = assign(:service, Service.create!(
      :title => "MyString",
      :description => "MyText",
      :feature_image_url => "MyString"
    ))
  end

  it "renders the edit service form" do
    render

    assert_select "form[action=?][method=?]", service_path(@service), "post" do

      assert_select "input#service_title[name=?]", "service[title]"

      assert_select "textarea#service_description[name=?]", "service[description]"

      assert_select "input#service_feature_image_url[name=?]", "service[feature_image_url]"
    end
  end
end
