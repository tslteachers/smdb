class Role < ActiveRecord::Base
  # belongs to movie

  belongs_to :movie

  # def movie
  #   return Movie.find_by_id(self.movie_id)
  # end

  # belongs to actor

  belongs_to :actor

  # def actor
  #   return Actor.find_by_id(self.actor_id)
  # end
end
