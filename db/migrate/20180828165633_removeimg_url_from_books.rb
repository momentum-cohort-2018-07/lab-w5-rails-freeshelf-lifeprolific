class RemoveimgUrlFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :img_url, :string
  end
end
