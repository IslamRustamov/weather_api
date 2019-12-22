class Recording < ApplicationRecord
  belongs_to :location
  validates :temp, presence: true
  validates :status, presence: true
end
