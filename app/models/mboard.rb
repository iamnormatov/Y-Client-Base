class Mboard < ApplicationRecord
  belongs_to :project
  has_many :mbs, dependent: :destroy
end
 