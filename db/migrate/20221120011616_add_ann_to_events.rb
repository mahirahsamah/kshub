class AddAnnToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :ann, :boolean
  end
end
