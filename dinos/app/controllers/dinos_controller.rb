class DinosController < ApplicationController
  def index
    @dinos = ["trex", "pterodactyl", "triceratops", "stegosaurus", "brontosaurus"]
    # renders views/dinos/index.html.erb
  end
  
  def show
    render plain: "DINO #{params[:id]}"
  end
  

end
