json.extract! notification, :id, :date, :message, :pqr_id, :user_id, :created_at, :updated_at
json.url notification_url(notification, format: :json)
