# frozen_string_literal: true

class SpellsController < OpenReadController
  before_action :set_spell, only: %i[show update destroy]

  # GET /spells
  def index
    @spells = Spell.all

    render json: @spells
  end

  # GET /spells/1
  def show
    render json: @spell
  end

  # POST /spells
  def create
    @spell = current_user.spells.build(spell_params)

    if @spell.save
      render json: @spell, status: :created, location: @spell
    else
      render json: @spell.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spells/1
  def update
    if @spell.update(spell_params)
      render json: @spell
    else
      render json: @spell.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spells/1
  def destroy
    @spell.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_spell
    @spell = current_user.spells.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def spell_params
    params.require(:spell).permit(:name, :category, :description, :fatality)
  end
end
