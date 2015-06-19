class Job < ActiveRecord::Base
  belongs_to :user
  belongs_to :company

  validates :user, presence: true
  validates :company, presence: true
  validates :title, presence: true
  validates :description, presence: true
end
