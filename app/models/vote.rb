class Vote < ActiveRecord::Base
  belongs_to :votable, polymorphic: true
  belongs_to :voter, foreign_key: :voter_id, class_name: "User"
end
