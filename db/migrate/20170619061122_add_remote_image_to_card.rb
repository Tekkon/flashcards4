class AddRemoteImageToCard < ActiveRecord::Migration
  def change
    add_column :cards, :remote_image, :string
  end
end
