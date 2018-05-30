json.extract! log, :id, :user_id, :pqr_id, :action, :backup, :created_at, :updated_at
json.url log_url(log, format: :json)
