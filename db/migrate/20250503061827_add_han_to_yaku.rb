class AddHanToYaku < ActiveRecord::Migration[7.2]
  def change
    add_column :yakus, :han, :string
  end
end
