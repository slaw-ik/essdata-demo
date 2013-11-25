class Article < ActiveRecord::Base
  attr_accessible :content, :title

  has_many :comments

  validates :title, :presence => true
  validates :content, :presence => true
end
