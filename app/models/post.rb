class Post < ApplicationRecord
  has_one_attached :avatar
  include Rails.application.routes.url_helpers
  attr_accessor :image

  def grab_image(url)
    downloaded_image = open(url)
    self.avatar.attach(io: downloaded_image  , filename: "foo.jpg")
  end
  def avatar_url
    if self.avatar.attached?
     rails_blob_path(self.avatar, only_path: true)
    else
      nil
    end
  end
end
