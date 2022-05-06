class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
    render({ :template => "actors_templates/index.html.erb"})
  end
  def actor_details
    #params looks like {"mid"=>"42"}
    act_id = params.fetch("aid")
    @the_actor = Actor.where({ :id => act_id}).at(0)
    @filmography = Character.where({ :actor_id => @the_actor.id})
    render({ :template => "actors_templates/show.html.erb"})
  end
end
