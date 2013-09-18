json.array!(@reservations) do |reservation|
  json.extract! reservation, :user_id, :date, :time, :teacher, :content
  json.url reservation_url(reservation, format: :json)
end
