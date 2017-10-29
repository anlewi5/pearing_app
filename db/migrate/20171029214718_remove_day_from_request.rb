class RemoveDayFromRequest < ActiveRecord::Migration[5.1]
  def change
    remove_column :requests, :day, :date
  end
end
