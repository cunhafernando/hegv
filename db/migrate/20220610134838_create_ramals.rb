class CreateRamals < ActiveRecord::Migration[7.0]
  def change
    create_table :ramals do |t|
      t.string :setor
      t.string :telefone
      t.string :email
      t.string :department

      t.timestamps
    end
  end
end
