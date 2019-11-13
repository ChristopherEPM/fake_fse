class AddHowstoUsecase < ActiveRecord::Migration[5.1]
  def up
  	add_column :hows, :usecase_id, :integer, references: :usecases
  end
  def down
  	remove_column :hows, :usecase_id
  end
end
