class Info < ActiveRecord::Base
  attr_accessible :text, :title, :url, :user
  has_many :comments
  
  validates :title, :text, presence: true
  validates :title, uniqueness: true
end
