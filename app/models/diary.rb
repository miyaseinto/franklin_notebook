class Diary < ApplicationRecord
  belongs_to :user

  with_options presence: true do |assoc|
    assoc.validates :taskbox1
    assoc.validates :taskbox2
    assoc.validates :taskbox3
    assoc.validates :taskbox4
    assoc.validates :taskbox5
    assoc.validates :taskbox6
    assoc.validates :taskbox7
    assoc.validates :taskbox8
    assoc.validates :taskbox9
    assoc.validates :taskbox10
    assoc.validates :diary
    assoc.validates :date
  end
end
