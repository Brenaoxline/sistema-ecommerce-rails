class CreateImagems < ActiveRecord::Migration[5.2]
  def change
    create_table :imagems do |t|
      t.string :imagem

      t.timestamps
    end
  end
end
