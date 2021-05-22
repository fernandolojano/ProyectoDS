class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.string :username
      t.string :password
      t.string :nombre

      t.timestamps
    end
  end
end
