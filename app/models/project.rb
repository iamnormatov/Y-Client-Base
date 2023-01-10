class Project < ApplicationRecord
  belongs_to :user
  has_many :mboards, dependent: :destroy
  has_many :tds, dependent: :destroy
  has_many :xurs, dependent: :destroy


  validates :title, presence: true
  validates :body, presence: true
end
 