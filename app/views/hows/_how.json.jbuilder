#json.extract! how, :id, :key, :value, :created_at, :updated_at
json.how do 
	json.id how.key
	json.what how.value
end
json.url how_url(how, format: :json)
