class ApiStatus < ApplicationRecord
  after_create_commit { broad_cast_prepend_to 'api_statuses' }

  validates :name, :url, presence: true
  validates :is_deprecated, :has_sunset, inclusion: [true, false]
  has_many :jobs
end
