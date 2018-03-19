class Article < ApplicationRecord
  validates :bajada, length: { maximum: 200 }, presence: true
  has_many :comentaries
end
