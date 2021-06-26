class Character < ActiveRecord::Base
  belongs_to :actor 
  belongs_to :show
  
  def say_that_thing_you_say
    urkel = Character.new(name: "Steve Urkel")
    urkel.catchphrase = "Did I do that?"
    urkel.save
    characterCatchphrase = "#{urkel.name} always says: #{urkel.catchphrase}"
    return characterCatchphrase
  end   
  
  def build_network
    malcolm = Character.new(name: "Malcolm Reynolds")
    showNetwork = malcolm.build_show(name: "Firefly").build_network(:call_letters => "Fox")
    show = malcolm.show
    return showNetwork
    # expect(show.name).to eq("Firefly")
    # expect(show.network.call_letters).to eq("Fox") 
    
  end  
end