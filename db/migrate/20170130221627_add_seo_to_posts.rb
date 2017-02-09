class AddSeoToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :meta_title, :string
    add_column :posts, :meta_description, :text
    add_column :posts, :permalink, :string
    add_column :posts, :no_index, :boolean
  end
end
