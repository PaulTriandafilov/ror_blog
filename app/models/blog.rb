class Blog < ApplicationRecord
  has_many :articles, dependent: :destroy

  validates :name, uniqueness: true
end
