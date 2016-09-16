json.extract! article, :id, :title, :author, :tags, :feature_image_url, :excerpt, :content, :created_at, :updated_at
json.url article_url(article, format: :json)