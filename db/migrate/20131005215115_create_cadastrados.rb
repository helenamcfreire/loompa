class CreateCadastrados < ActiveRecord::Migration

  def change
    create_table :cadastrados do |t|

      t.string :nome
      t.string :email
      t.timestamps

    end
  end
end
