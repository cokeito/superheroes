class PagesController < ApplicationController
  def batman
  end

  def superman
  end

  def batman_vs_superman
    @votes_superman = VoteSuperman.count
    @votes_batman = VoteBatman.count
  end

  def vote_batman
  	@name = params[:name]
  	@email = params[:email]

  	x = VoteBatman.new(name:@name, email:@email)
  	x.save

    redirect_to root_path 

  end

  def vote_superman
    @name = params[:name]
    @email = params[:email]

    x = VoteSuperman.new(name:@name, email:@email)
    x.save

    redirect_to root_path 
  end

end
