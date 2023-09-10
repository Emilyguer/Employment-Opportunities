json.extract! offerjob, :id, :title, :description, :requirements, :salary, :location, :created_at, :updated_at
json.url offerjob_url(offerjob, format: :json)
