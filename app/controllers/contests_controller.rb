class ContestsController < ApplicationController
  def index
  end
  def new
  end

  def create
    @contest = Contest.new(contest_params)
    if @contest.save
      respond_to  do |format|
        format.html {redirect_to result_path}
      end
    else
      respond_to do |format|
        format.html {render 'new'}
      end
    end
  end

  def edit
    @contest = Contest.find(params[:id])
  end

  def update
       @contest = Contest.find(params[:id])
       if @contest.update(contest_params)
        redirect_to result_path
       else
        render 'edit'
       end
  end

  def destroy
    @contest = Contest.find(params[:id])
    @contest.destroy
    redirect_to result_path
  end

  private

  def contest_params
    params.require(:contest).permit(:match_number, :player_first, :player_second, :match_point)
  end
end
