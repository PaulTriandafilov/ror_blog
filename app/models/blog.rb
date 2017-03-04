class Blog < ApplicationRecord
  has_many :articles, dependent: :destroy
end
