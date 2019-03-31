class ChangeDefaultValueOfViewColumInVideoTable < ActiveRecord::Migration[5.2]
  def change
    change_column :videos, :view, :integer, default: 0
  end
end
