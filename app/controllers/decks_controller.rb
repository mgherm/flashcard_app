class DecksController < ApplicationController
  def index
    @decks = current_user.decks
  end
  def show
    @deck = Deck.find(params[:id])
    @cards = @deck.cards
  end
  def new
    @deck = Deck.new
  end
  def create
    @deck = Deck.new(params[:deck])
    @deck.user_id=current_user.id
    @deck.save
    redirect_to decks_path
  end
  def edit
    @deck = Deck.find(params[:id])
  end
  def update
    @deck = Deck.find(params[:id])
    @deck.update_attributes(params[:deck])
    redirect_to @deck
  end
  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy
    redirect_to decks_path
  end
end
