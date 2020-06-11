class Member < ApplicationRecord
  has_many :projects, inverse_of: 'owner', foreign_key: 'owner_id'

  has_many :participations
  has_many :discussions, through: :participations

  has_many :comments

end
