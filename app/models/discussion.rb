class Discussion < ApplicationRecord
  belongs_to :project
  has_many :participations
  has_many :members, through: :participations

end
