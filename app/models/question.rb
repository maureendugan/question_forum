class Question < ActiveRecord::Base
  validates :title, :presence => true
  validates :body, :presence => true
  belongs_to :user
  has_many :responses
end
