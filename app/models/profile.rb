class Profile < ActiveRecord::Base
  has_many :projects

  validates :name, presence: true
  validates :skills, null: false
  validates :experience, presence: true
  validates :biography, presence: true
  validates :image_link, presence: true, url: true
end
