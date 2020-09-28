class AddAdopterToAdoption < ActiveRecord::Migration[6.0]
  def change
    add_column :adoptions, :adopter, :string
  end
end
