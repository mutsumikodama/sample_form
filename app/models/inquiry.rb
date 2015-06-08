class Inquiry < ActiveRecord::Base
  VALID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true
  validates :email, format: { with: VALID_EMAIL_REGEX }, presence: true
  validates :inquiry, presence: true
end
