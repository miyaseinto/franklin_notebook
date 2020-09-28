class Target < ApplicationRecord
  belongs_to :user

  validates :target, presence:true
end
