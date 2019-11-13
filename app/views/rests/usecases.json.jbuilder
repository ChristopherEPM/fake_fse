json.rest do 
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
end