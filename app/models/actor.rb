class Actor < ActiveRecord::Base
  # has many roles

  has_many :roles

  # def roles
  #   return Role.where(:actor_id => self.id)
  # end
end
