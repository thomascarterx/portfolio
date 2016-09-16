require 'rails_helper'

RSpec.describe "projects/show", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :title => "Title",
      :tags => "Tags",
      :feature_image_url => "Feature Image Url",
      :description => "MyText",
      :problem => "MyText",
      :solution => "MyText",
      :client => "Client",
      :demo_url => "Demo Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Tags/)
    expect(rendered).to match(/Feature Image Url/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Client/)
    expect(rendered).to match(/Demo Url/)
  end
end
