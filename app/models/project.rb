class Project < ActiveRecord::Base
  belongs_to :profile

  validates :title, presence: true
  validates :link, presence: true, url: true
  validates :description, presence: true
end
