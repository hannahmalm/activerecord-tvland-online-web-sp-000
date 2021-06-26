require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name 
    full_name = "#{first_name} #{last_name}"
    return full_name
  end 
  

  def list_roles
     #define the name of the character the actor plays through the actor id - 
     #binding.pry
     
    emilia = Actor.new(:first_name => "Emilia", :last_name => "Clarke")
    khaleesi = Character.new(:name => "Khaleesi")
    khaleesi.actor = emilia
    got = Show.new(:name => "Game of Thrones")
    khaleesi.show = got
    khaleesi.save
    
    # character = Characters.find_by(:actor_id)
    # shows = Characters.find_by(:show_id)
    roles = "#{khaleesi.name} - #{got.name}"
    return roles
  end 
  
  
end