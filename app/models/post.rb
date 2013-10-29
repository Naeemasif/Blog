class Post < ActiveRecord::Base
  attr_accessible :text, :title, :picture
  validates_presence_of :title, :text
  validates_uniqueness_of :title
  has_many :comments , dependent: :destroy
  mount_uploader :picture, PictureUploader



end
