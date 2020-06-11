class Project < ApplicationRecord
  belongs_to :owner, class_name: 'Member', foreign_key: 'owner_id'
  has_many :discussions
end
