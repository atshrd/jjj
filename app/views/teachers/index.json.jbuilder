json.array!(@teachers) do |teacher|
  json.extract! teacher, :name, :about
  json.url teacher_url(teacher, format: :json)
end
