class ApiStatus < ApplicationRecord
  validates :name, :url, presence: true
  validates :is_deprecated, :has_sunset, inclusion: [true, false]
  has_many :jobs
end
