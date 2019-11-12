class CreateUsecases < ActiveRecord::Migration[5.1]
  def change
    create_table :usecases do |t|
      t.string :what
      t.string :how, array: true, default: [].to_yaml

      t.timestamps
    end
  end
end
