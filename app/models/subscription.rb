class Subscription < ApplicationRecord
  belongs_to :klass
  has_many :users
  validates :price, :presence => true
end
