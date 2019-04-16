class AddImageToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :imiage, :string
  end
end
