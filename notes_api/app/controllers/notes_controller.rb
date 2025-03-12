class NotesController < ApplicationController
    before_action :set_note, only: [:show, :update, :destroy]

  # GET /notes
  def index
    @notes = Note.all
    render json: @notes
  end

  # GET /notes/:id
  def show
    render json: @note
  end

  # POST /notes
  def create
    @note = Note.new(note_params)
    if @note.save
      render json: @note, status: :created
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # PUT /notes/:id
  def update
    if @note.update(note_params)
      render json: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # DELETE /notes/:id
  def destroy
    @note.destroy
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:title, :content)
  end
end
