# encoding: utf-8
class VideoCast < ActiveRecord::Base

  has_many :comments

  
  mount_uploader :mp4, Mp4Uploader
  mount_uploader :m4v, M4vUploader
  mount_uploader :ogv, OgvUploader
  serialize :crop_params, Hash
  mount_uploader :image, ImageUploader
  include ImageCrop
  

  
  def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
  
  
  
  def self.with_identity(identity)
    where(:identity => identity).first
  end
  
end
