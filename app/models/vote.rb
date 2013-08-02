class Vote < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user

  validates :user_id, :uniqueness => { :scope => :movie_id, :message => "has already voted for that movie" }, :presence => true
  validates :movie, :presence => true
end
