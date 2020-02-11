class PreferencesController < ApplicationController

    before_action :set_preference, only: [:show, :edit, :update, :destroy]
    
    def index
        @preferences = Preference.all
        render json: @preferences
    end
    
    def show
        render json: @preference, include: {poem: { only: [:name, :author] } }
    end
    
    def new
        @preference = Preference.new
        render json: @preference
    end

    def create
        @preference = Preference.create(preference_params)
        render json: @preference
    end 
    
    def edit
        render json: @preference
    end

    def update
        @preference.update(preference_params)
        render json: @preference
    end
    
    def destroy
        @preference.destroy
        render json: @preference
    end
    
    private

    def preference_params
        params.require(:preference).permit(:reddit, :news, :stocks, :weather, :spotify, :calender, :twitter, :sleepCycle, :user_id)
    end
    
    def set_preference
        @preference = Preference.find(params[:id])
    end

end
