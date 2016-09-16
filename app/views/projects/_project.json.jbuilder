json.extract! project, :id, :title, :tags, :feature_image_url, :description, :problem, :solution, :client, :demo_url, :created_at, :updated_at
json.url project_url(project, format: :json)