#json.extract! usecase, :id, :what, :how
json.usecase do 
	json.id usecase.id
	json.what usecase.what
	json.how usecase.how
end
json.url usecase_url(usecase, format: :json)
