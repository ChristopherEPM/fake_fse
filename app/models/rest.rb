class Rest < ApplicationRecord
	include ActiveModel::Validations
  
  # validates :user, inclusion: { in: %w(support admin empleado super, supervacas prefer),
  #   message: "%{value} is not a valid user" }

  # validates :app, inclusion: {in: %w(8820), message: "Application %{value} not found"}
  # validates :role, inclusion: {in: %w(FSEASCOTTAPP), message: "Role not found"}
	
  has_many :usecases


  validate :rest_validator

  def rest_validator
   
   	errors.add(:user,{code: 1265, message: "User data not found"}) if !["support","admin","super","supervacas","empleado","prefer"].include?(self.user)
  	
  	errors.add(:application, {code: 1000, message: "Application not found"}) if self.app !="8820"
  	
  	errors.add(:role, {code: 1125, message: "Role not found"}) if self.role !="FSEASCOTTAPP"

  	errors.add(:data, {code: 1150, message: "Data output not found"}) if self.usecases == [] && self.persisted?
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