class SongsController < ApplicationController
  before_action :find_song, only: %i[show]
 
  def show
  end
  
  private

  def find_song
    @song = Song.find_by(id: params[:id])
    unless @song
      redirect_to root_path
    end
  end

  def song_params
    params.require(:song).permit(:name, :album_id, :country_id, :audio, :category_ids => [])
  end

end
