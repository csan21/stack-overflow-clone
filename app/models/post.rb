class Post < ActiveRecord::Base
  has_many :votes, as: :votable, dependent: :destroy
  has_many :comments, dependent: :destroy

  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :category

  

end
