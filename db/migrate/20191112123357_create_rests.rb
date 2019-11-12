class CreateRests < ActiveRecord::Migration[5.1]
  def change
    create_table :rests do |t|
      t.string :app
      t.string :role
      t.string :user

      t.timestamps
    end
  end
end
