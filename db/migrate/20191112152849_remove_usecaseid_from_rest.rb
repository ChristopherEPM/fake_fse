class RemoveUsecaseidFromRest < ActiveRecord::Migration[5.1]
  def change
  	remove_reference :rests, :usecase, foreign_key: true
  end
end
