class Review < ApplicationRecord
  validates(:name, :feedback, :presence => true)
  belongs_to :membership

end
