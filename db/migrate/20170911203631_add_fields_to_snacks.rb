class AddFieldsToSnacks < ActiveRecord::Migration[5.0]
  def change
    add_column :snacks, :name, :string
    add_column :snacks, :optional, :boolean
    add_column :snacks, :times_purchased, :integer
    add_column :snacks, :last_purchased, :date
    add_column :snacks, :purchase_location, :string
    add_column :snacks, :api_id, :integer
  end
end
