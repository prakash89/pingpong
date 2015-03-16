class MatchesController < ApplicationController
  def index
  end

  def new
  end

  def create
    @match = Match.new(match_params)
    if @match.save
      respond_to  do |format|
        format.html {redirect_to today_match_path}
      end
    else
      respond_to do |format|
        format.html {render 'new'}
      end
    end
  end

  def edit
    @match = Match.find(params[:id])
  end

  def update
       @match = Match.find(params[:id])
       if @match.update(match_params)
        redirect_to today_match_path
       else
        render 'edit'
       end
  end

  def destroy
    @match = Match.find(params[:id])
    @match.destroy
    redirect_to today_match_path
  end

  private

  def match_params
    params.require(:match).permit(:player_first, :image1, :player_second, :image2, :remote_image_url)
  end

end
