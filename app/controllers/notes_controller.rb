class NotesController < ApplicationController
    
    before_action :set_note, only: [:show, :edit, :update, :destroy]
    
    def index
        @notes = Note.all
        render json: @notes
    end
    
    def show
        render json: @note
    end
    
    def new
        @note = Note.new
        render json: @note
    end

    def create
        @note = Note.create(title: params[:title],text_content: params[:text_content], user_id: params[:user_id])
        render json: @note
    end 
    
    def edit
        render json: @note
    end

    def update
        @note.update(note_params)
        render json: @note
    end
    
    def destroy
        @note.destroy
        render json: @note
    end
    
    private

    def note_params
        params.require(:note).permit(:title, :text_content, :user_id)
    end
    
    def set_note
        @note = Note.find(params[:id])
    end
    
end
