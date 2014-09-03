class DecksController < ApplicationController

  def index
    @decks = Deck.all
  end

  def show
    @deck = Deck.find(params[:id])
  end

  def new
    @deck = Deck.new
  end

  def create
    @deck = Deck.new(deck_params)
    #Deck.new(name: params[:deck][:name])
    @deck.save
    redirect_to '/decks'
  end

  def edit
    @deck = Deck.find(params[:id])
  end

  def update
    @deck = Deck.find(params[:id])
    @deck.update(deck_params)
    redirect_to "/decks/#{@deck.id}"
  end

  def deck_params
    params.require(:deck).permit(:name)
  end

  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy
    redirect_to '/decks'
  end
end