class ChangeRequestStartTimeToDateTime < ActiveRecord::Migration[5.1]
  def change
    remove_column :requests, :start_time, :time
    add_column :requests, :start_time, :datetime
  end
end
