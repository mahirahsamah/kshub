class AddActiveStatusToMerch < ActiveRecord::Migration[6.1]
  def change
    add_column :merches, :active, :boolean, default: true
  end
end
