class Usecase < ApplicationRecord
	belongs_to :rest



    def as_json(options={})
    	result = super.except({ :except => [:created_at, :updated_at] }.merge(options))
    	result
    end

    def to_json
  		Jbuilder.encode do |json|
	    	json.(self, :id, :what, :how)
  		end
	end
end
