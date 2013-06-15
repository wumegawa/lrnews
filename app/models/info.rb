class Info < ActiveRecord::Base
  attr_accessible :text, :title, :url, :user
  
  validates :title, :text, presence: true
  validates :title, uniqueness: true
end
