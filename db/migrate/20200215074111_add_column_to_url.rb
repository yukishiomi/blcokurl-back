class AddColumnToUrl < ActiveRecord::Migration[6.0]
  def change
    add_column :urls, :name, :string
  end
end
