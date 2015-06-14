class Inquiry < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }

  validates :user_id, presence: true
  validates :inquiry, presence: true, length: { maximum: 300 }
end
