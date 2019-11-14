class Rest < ApplicationRecord
	include ActiveModel::Validations
  
  validates :user, inclusion: { in: %w(support admin empleado super, supervacas prefer),
    message: "%{value} is not a valid user" }
	
  has_many :usecases

  validate :rest_validator

  def rest_validator
    #errors.add(:base,"Error, El usuario no es supervacas, así que no mola") if self.user != "admin"
  end

end

# class RestValidator < ActiveModel::Validator

#     def initialize(rest)
#       @rest = rest
#     end
    
#     def validate(record)
#       if @rest.user != "supervacas"
#         record.errors.add(:base, "Error, El usuario no es supervacas, no que mola")
#       end
#     end

#     private
#       # def some_complex_logic
#       #   # ...
#       # end
# end