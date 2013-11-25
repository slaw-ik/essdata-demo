class Comment < ActiveRecord::Base
  attr_accessible :article_id, :author, :content

  belongs_to :article

  validates :author, :presence => true
  validates :content, :presence => true
end
