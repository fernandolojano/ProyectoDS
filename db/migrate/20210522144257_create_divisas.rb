class CreateDivisas < ActiveRecord::Migration[6.1]
  def change
    create_table :divisas, id: false, primary_key: :token_divisa do |t|
      t.string :token_divisa
      t.string :nombre_divisa
      t.float :valor
      t.string :simbolo

      t.timestamps
    end
  end
end
