class YakuController < ApplicationController
  def index
    @q = Yaku.ransack(params[:q])
    @yakus = @q.result(distinct: true)
  end

  def show
    @yaku = Yaku.find(params[:id])
  end
end
