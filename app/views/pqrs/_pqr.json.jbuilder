json.extract! pqr, :id, :first_name, :last_name, :email, :title, :subject, :body, :creation_date, :expiration_date, :user_id, :pqr_files_id, :created_at, :updated_at
json.url pqr_url(pqr, format: :json)
