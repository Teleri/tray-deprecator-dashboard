class CreateApiStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :api_statuses do |t|

      t.timestamps
    end
  end
end
