class RemoveHanFromYaku < ActiveRecord::Migration[7.2]
  def change
    remove_column :yakus, :han, :integer
  end
end
