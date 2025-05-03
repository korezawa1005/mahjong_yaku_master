class AddReadingToYaku < ActiveRecord::Migration[7.2]
  def change
    add_column :yakus, :reading, :string
  end
end
