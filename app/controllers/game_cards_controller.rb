class GameCardsController < ApplicationController
  before_action :set_game_card, only: [:show, :edit, :update, :destroy]

  # GET /game_cards
  # GET /game_cards.json
  def index
    @game_cards = GameCard.all
  end

  # GET /game_cards/1
  # GET /game_cards/1.json
  def show
  end

  # GET /game_cards/new
  def new
    @game_card = GameCard.new
  end

  # GET /game_cards/1/edit
  def edit
  end

  # POST /game_cards
  # POST /game_cards.json
  def create
    @game_card = GameCard.new(game_card_params)

    respond_to do |format|
      if @game_card.save
        format.html { redirect_to @game_card, notice: 'Game card was successfully created.' }
        format.json { render :show, status: :created, location: @game_card }
      else
        format.html { render :new }
        format.json { render json: @game_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_cards/1
  # PATCH/PUT /game_cards/1.json
  def update
    respond_to do |format|
      if @game_card.update(game_card_params)
        format.html { redirect_to @game_card, notice: 'Game card was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_card }
      else
        format.html { render :edit }
        format.json { render json: @game_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_cards/1
  # DELETE /game_cards/1.json
  def destroy
    @game_card.destroy
    respond_to do |format|
      format.html { redirect_to game_cards_url, notice: 'Game card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_card
      @game_card = GameCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_card_params
      params.require(:game_card).permit(:game_id, :card_id, :type, :address, :chosen)
    end
end
