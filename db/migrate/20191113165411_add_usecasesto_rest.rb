class AddUsecasestoRest < ActiveRecord::Migration[5.1]
  def up
  	add_column :usecases, :rest_id, :integer, references: :rests
  end
  def down
  	remove_column :usecases, :rest_id
  end
end
