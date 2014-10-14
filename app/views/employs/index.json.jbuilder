json.array!(@employs) do |employ|
  json.extract! employ, :id, :first_name, :last_name, :contact, :address
  json.url employ_url(employ, format: :json)
end
