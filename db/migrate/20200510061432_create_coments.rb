class CreateComents < ActiveRecord::Migration[6.0]
  def change
    create_table :coments do |t|
      t.references :post, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :text

      t.timestamps
    end
  end
end
