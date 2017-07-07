class Review < ApplicationRecord
  validates(:name, :feedback, :presence => true)
end
