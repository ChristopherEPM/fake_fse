class AddUsecaseToRest < ActiveRecord::Migration[5.1]
  def change
    add_reference :rests, :usecase, foreign_key: true
  end
end
