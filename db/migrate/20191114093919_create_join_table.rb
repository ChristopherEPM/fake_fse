class CreateJoinTable < ActiveRecord::Migration[5.1]
  def change
  	create_table :hows_usecases, id: false do |t|
      t.belongs_to :how
      t.belongs_to :usecase
    end
  end
end
