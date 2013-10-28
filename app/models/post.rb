class Post < ActiveRecord::Base
  attr_accessible :text, :title
  validates_presence_of :title, :text
  validates_uniqueness_of :title
  has_many :comments , dependent: :destroy

end
