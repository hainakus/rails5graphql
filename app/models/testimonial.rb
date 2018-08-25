class Testimonial < ApplicationRecord
  belongs_to :user, optional: true
  has_one_attached :avatar
  attr_accessor :image
  include Rails.application.routes.url_helpers

=begin
  def grab_image(url)
    downloaded_image = open(url)
    self.avatar.attach(io: downloaded_image  , filename: "foo.jpg")
  end
=end
  def image
    if self.avatar.attached?
      @image = rails_blob_path(self.avatar, only_path: true)
    else
      @image = nil
    end
  end
end
