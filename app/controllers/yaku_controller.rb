class YakuController < ApplicationController
  def index
    @yakus = Yaku.all
  end

  def show
    @yaku = Yaku.find(params[:id])
  end
end
