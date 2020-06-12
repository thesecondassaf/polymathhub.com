class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  has_many :projects, inverse_of: 'owner', foreign_key: 'owner_id'
  has_many :participations
  has_many :discussions, through: :participations
  has_many :comments

  validates :displayname, presence: true, uniqueness: {case_sensitive: false}

  # Only allow letter, number, underscore and punctuation.
  validates_format_of :displayname, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true

end
