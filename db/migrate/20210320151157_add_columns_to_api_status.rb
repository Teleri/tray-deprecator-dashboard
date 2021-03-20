class AddColumnsToApiStatus < ActiveRecord::Migration[6.1]
  def change
    add_column :table_name, :column_name, :column_type, :column_options
  end
end
