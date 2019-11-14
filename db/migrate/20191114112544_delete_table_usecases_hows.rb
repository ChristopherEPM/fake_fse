class DeleteTableUsecasesHows < ActiveRecord::Migration[5.1]
  def change
  	drop_table :usecases_hows
  end
end
