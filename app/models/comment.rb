class Comment < ActiveRecord::Base
  belongs_to :info
  attr_accessible :body, :from, :parent_id, :info_id
  validates :body, :from, presence: true
end
