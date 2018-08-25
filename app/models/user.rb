class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one_attached :avatar
  has_many :testimonials
  has_one :profile
  has_and_belongs_to_many :subscriptions
  has_many :klasses
  has_many :courses, through: :klasses

  attr_accessor :image, :role
  include Rails.application.routes.url_helpers
  enum status: [:admin, :teacher, :student]


  after_initialize :set_default_role, :if => :new_record?

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def set_default_role
    self.status ||= :student
  end

  def role
    @role = self.status
  end
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
