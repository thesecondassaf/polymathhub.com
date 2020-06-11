class User < ApplicationRecord
  has_many :projects, inverse_of: 'owner'
end
