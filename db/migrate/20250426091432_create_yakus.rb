class CreateYakus < ActiveRecord::Migration[7.2]
  def change
    create_table :yakus do |t|
      t.string :name
      t.text :description
      t.integer :han
      t.string :photo

      t.timestamps
    end
  end
end
