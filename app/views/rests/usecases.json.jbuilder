
	json.app @rest.app
	json.role @rest.role
	json.user @rest.user
	json.usecases @rest.usecases do |usecase|
		json.id usecase.id
		json.what usecase.what
		json.how usecase.hows do |how|
			json.key how.key
			json.value how.value
		end
	end
	json.errors @rest.errors.to_hash.values do |errors|

    errors.each do |error|
			json.errorcode error[:code]
      json.error error[:message]
		end
		
	end  if @rest.errors.to_hash.values != []

