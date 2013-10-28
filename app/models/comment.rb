class Comment < ActiveRecord::Base
  belongs_to :post
  validates_presence_of :commenter, :body

  attr_accessible :body, :commenter

end
