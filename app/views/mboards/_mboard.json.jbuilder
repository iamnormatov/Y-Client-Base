json.extract! mboard, :id, :name, :body, :project_id, :created_at, :updated_at
json.url mboard_url(mboard, format: :json)
 