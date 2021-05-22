class CreateCriptomonedas < ActiveRecord::Migration[6.1]
  def change
    create_table :criptomonedas, id: false, primary_key: :token_criptomoneda do |t|
      t.string :token_criptomoneda
      t.string :nombre
      t.float :valor_actual

      t.timestamps
    end
  end
end
