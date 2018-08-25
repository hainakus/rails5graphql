class Documentation < ApplicationRecord
  has_many_attached :docs
  belongs_to :course
  attr_accessor :files
  include Rails.application.routes.url_helpers
  validates :time_release,:title, :presence => true

  def files
    @files = []
    if self.docs.attached?
      self.docs.each do |doc|
       tmp = rails_blob_path(doc, only_path: true)
       @files << tmp
      end
      @files
    else
      nil
    end
  end

end
