class CreateKsHubs < ActiveRecord::Migration[6.1]
  def change
    create_table :ks_hubs do |t|
      t.string :title

      t.timestamps
    end
  end
end
