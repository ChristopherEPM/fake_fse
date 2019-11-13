json.rest do 
	json.id @rest.id
	json.app @rest.app
	json.role @rest.role
	json.user @rest.user
	json.usecases @rest.usecases do |usecase|
		json.id usecase.id
		json.what usecase.what
		json.how usecase.how
	end
end