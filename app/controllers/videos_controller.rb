class VideosController < ApplicationController
  before_action :authenticate_user!
  before_action :find_video, only: [:show, :edit, :update, :destroy, :add_view]
  before_action :require_same_user, only: [:edit, :update, :destroy]

  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    @video.user = current_user

    if @video.save
      flash[:success] = 'Seu video foi salvo com sucesso'
      redirect_to video_path(@video)
    else
      flash[:error] = @video.errors.full_messages.to_sentence
      render 'new'
    end
  end

  def show; end

  def edit; end

  def update
    if @video.update(video_params)
      flash[:success] = 'Seu video foi alterado com sucesso'
      redirect_to video_path(@video)
    else
      flash[:error] = @video.errors.full_messages.to_sentence
      render 'edit'
    end
  end

  def destroy
    @video.destroy
    flash[:success] = 'Seu video foi removido com sucesso'
    redirect_to videos_path
  end

  def add_view
    @video.add_view
  end

  private

  def find_video
    @video = Video.find(params[:id])
  end

  def video_params
    params.require(:video).permit(:name, :url)
  end

  def require_same_user
    if current_user != @video.user
      flash[:error] = 'Você não tem permissão para executar essa ação'
      redirect_to root_path
    end
  end
end
