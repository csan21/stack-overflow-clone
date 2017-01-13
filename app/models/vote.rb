class Vote < ActiveRecord::Base
  belongs_to :votable, polymorphic: true
  belongs_to :voter, foreign_key: :voter_id, class_name: "User"

  validates_uniqueness_of :voter_id, :scope => [:votable_id, :votable_type]
end
