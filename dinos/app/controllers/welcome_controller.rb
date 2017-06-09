class WelcomeController < ApplicationController
  def index
    # renders views/welcome/index.html.erb
  end

  def show
    # renders views/welcome/show.html.erb
    @id = params[:id]
  end
  
  
end
