class AddThingsToAuthors < ActiveRecord::Migration[6.0]
  def change
    add_column :authors, :first_name, :string
    add_column :authors, :last_name, :string
    add_column :authors, :bio, :text
    add_column :authors, :thumbnail, :string
  end
end
