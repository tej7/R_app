class CreateRestolinas < ActiveRecord::Migration[5.1]
  def change
    create_table :restolinas do |t|
      t.string :login
      t.string :Menu

      t.timestamps
    end
  end
end
