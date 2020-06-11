class Discussion < ApplicationRecord
  belongs_to :project
  has_many :participations
  has_many :users, through: :participations

end
