class AddColumnsToApiStatus < ActiveRecord::Migration[6.1]
  def change
    add_column :api_statuses, :name, :string
    add_column :api_statuses, :url, :string
    add_column :api_statuses, :is_deprecated, :boolean
    add_column :api_statuses, :has_sunset, :boolean
    add_column :api_statuses, :sunset_date, :datetime
  end
end
