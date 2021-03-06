class CreateBalanceDivisas < ActiveRecord::Migration[6.1]
  def change
    create_table :balance_divisas do |t|
      t.float :valor
      t.bigint :usuario_id
      t.string :token_divisa

      t.timestamps
    end

    add_foreign_key :balance_divisas, :divisas, column: 'token_divisa', primary_key: 'token_divisa'
    add_foreign_key :balance_divisas, :usuarios
  end
end