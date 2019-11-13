class AddHowtoUsecase < ActiveRecord::Migration[5.1]
  def change
  	add_reference :hows, :usecase, foreign_key: true
  end
end
