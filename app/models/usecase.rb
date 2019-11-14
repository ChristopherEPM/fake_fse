class Usecase < ApplicationRecord
  has_and_belongs_to_many :hows

  def as_json(options={})
  	result = super.except({ :except => [:created_at, :updated_at] }.merge(options))
  	result
  end

  def to_json
		Jbuilder.encode do |json|
    	json.(self, :id, :what, :hows)
		end
  end
end
