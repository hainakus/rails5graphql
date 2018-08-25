class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar
  include Rails.application.routes.url_helpers
  attr_accessor :image

  def image
    if self.avatar.attached?
      @image = rails_blob_path(self.avatar, only_path: true)
    else
      @image = nil
    end
  end
end
