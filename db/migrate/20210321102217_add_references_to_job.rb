class AddReferencesToJob < ActiveRecord::Migration[6.1]
  def change

    add_reference :jobs, :api_status, null: false, foreign_key: true
  end
end
