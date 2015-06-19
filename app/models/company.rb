class Company < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :jobs

  validates :user, presence: true
  validates :category, presence: true
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :size, presence: true
  validates :product_description, presence: true
  validates :company_culture, presence: true
end
