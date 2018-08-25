class Klass < ApplicationRecord
  belongs_to :course

  has_many :subscriptions
end
