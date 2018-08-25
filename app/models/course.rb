class Course < ApplicationRecord
  has_one_attached :avatar
  has_many :klasses
  has_many :documentations

  attr_accessor :image

  include Rails.application.routes.url_helpers
  def image
    if self.avatar.attached?
      @image = rails_blob_path(self.avatar, only_path: true)
    else
      @image = nil
    end
  end


end
