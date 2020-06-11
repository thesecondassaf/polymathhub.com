class Participation < ApplicationRecord
  belongs_to :discussion
  belongs_to :member
end
