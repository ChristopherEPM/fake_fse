class RemoveHowFromUsecases < ActiveRecord::Migration[5.1]
  def change
  	remove_reference :hows, :usecase, foreign_key: true
  end
end
