class YakuController < ApplicationController
  def index
    session[:quiz_count] = 0
    session[:used_yaku_ids] = []
    session[:correct_count] = 0

    @q = Yaku.ransack(params[:q])
    case params[:category]
    when "yakuman"
      @yakus = @q.result(distinct: true).where(han: "役満")
    when "normal"
      @yakus = @q.result(distinct: true).where.not(han: "役満")
    else
      @yakus = @q.result(distinct: true)
    end
  end

  def show
    @yaku = Yaku.find(params[:id])
    @prev_yaku = Yaku.where("id < ?", @yaku.id).order(id: :desc).first
    @next_yaku = Yaku.where("id > ?", @yaku.id).order(id: :asc).first
  end

  def quiz_top
    session[:quiz_count] = 0
    session[:used_yaku_ids] = []
    session[:correct_count] = 0
  end
  def quiz
    session[:quiz_count] ||= 0 # quiz_countがnilならクイズの数を０に設定する　
    session[:used_yaku_ids] ||= [] # クイズに使用したidを０に設定する
    session[:quiz_count] += 1 # クイズの数であるquiz_countに1を足す
    mode = params[:mode] || 'random'

    case mode
    when "frequent"
      pool = Yaku.where(han: ["1", "2", "3", "4", "6"])
    when "yakuman"
      pool = Yaku.where(han: "役満")
    else
      pool = Yaku.all
    end

    if session[:quiz_count] == 11
      redirect_to quiz_result_yaku_index_path and return # and returnをつけることによってそれ以降の処理を中断する
    end

    unused_yakus = pool.where.not(id: session[:used_yaku_ids]) # used_yaku_idsに入ってない役を探す

    @correct_yaku = unused_yakus.order('RANDOM()').first # 'RANDOM()' ランダムな順番で並べ替える関数でPostgreSQLで使えるSQL関数。引数を''で囲んで使用する

    session[:used_yaku_ids] << @correct_yaku.id # used_yaku_idsに今問題で出した役のidを追加する

    @choices = (pool.where.not(id: @correct_yaku.id).sample(3) + [@correct_yaku]).shuffle # where テーブル内の条件に一致したレコードを配列の形で取得することができるメソッド。
    # shuffleメソッド　配列の要素をランダムシャッフルして，その結果を配列として返します sampleメソッド 配列の要素を1個(引数を指定した場合 n 個) ランダムに選んで返します。
    # モデル.where.not(条件..) WHEREと一緒に使用し条件式に一致しないものを取得
  end

  def check_answer
    @selected_id = params[:choice_id].to_i
    @correct_id = params[:correct_id].to_i
    @is_correct = (@selected_id == @correct_id)

    @selected_yaku = Yaku.find_by(id: @selected_id)
    @correct_yaku = Yaku.find_by(id: @correct_id) 

    session[:correct_count] ||= 0
    session[:correct_count] += 1 if @is_correct
  end

  def quiz_result
    @correct_count = session[:correct_count] || 0
    # セッション初期化
    session[:quiz_count] = 0
    session[:used_yaku_ids] = []
    session[:correct_count] = 0
  end
end
