class Comment < ApplicationRecord
  has_many :replies, class_name: "Comment", foreign_key: "prompt_id"
  belongs_to :prompt, class_name: 'Comment', foreign_key: 'prompt_id', optional: true

  belongs_to :discussion
  belongs_to :member

end
