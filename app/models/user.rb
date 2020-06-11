class User < ApplicationRecord
  has_many :projects, inverse_of: 'owner', foreign_key: 'owner_id'
end
