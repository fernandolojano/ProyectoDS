class CreateDivisas < ActiveRecord::Migration[6.1]
  def change
    create_table :divisas, id: false do |t|
      t.string :token_divisa, null: false
      t.string :nombre_divisa
      t.float :valor
      t.string :simbolo

      t.timestamps
    end
    execute "ALTER TABLE divisas ADD PRIMARY KEY (token_divisa)"
  end
end
