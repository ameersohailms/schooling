json.extract! profile, :id, :first_name, :last_name, :bio, :user_id, :address, :pin, :phone, :country, :state, :date_od_birth, :created_at, :updated_at
json.url profile_url(profile, format: :json)
