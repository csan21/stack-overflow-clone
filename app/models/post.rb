class Post < ActiveRecord::Base
  has_many :votes, as: :votable
  has_many :comments
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :category
end
