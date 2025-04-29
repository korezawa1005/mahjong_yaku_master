class AddMenzenOnlyAndOpenHanToYakus < ActiveRecord::Migration[7.2]
  def change
    add_column :yakus, :menzen_only, :string
    add_column :yakus, :open_han, :integer
  end
end
