class CreateRequestsAndTags < ActiveRecord::Migration[5.1]
  def change
    create_table :requests_and_tags, id: false do |t|
      t.belongs_to :request, index: true
      t.belongs_to :tag, index: true
    end
  end
end
