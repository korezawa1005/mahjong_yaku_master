class YakuController < ApplicationController
  def index
    session[:quiz_count] = 0
    session[:used_yaku_ids] = []
    session[:correct_count] = 0

    @q = Yaku.ransack(params[:q])
    @yakus = @q.result(distinct: true)
  end

  def show
    @yaku = Yaku.find(params[:id])
  end

  def quiz
    session[:quiz_count] ||= 0 # クイズの数を０に設定する
    session[:used_yaku_ids] ||= [] # クイズに使用したidを０に設定する
    if session[:quiz_count] >= 10
      redirect_to quiz_result_yaku_index_path and return # and returnをつけることによってそれ以降の処理を中断する
    end

    remaining_yakus = Yaku.where.not(id: session[:used_yaku_ids]) # used_yaku_idsに入ってない役を探す
    @correct_yaku = Yaku.order('RANDOM()').first # 'RANDOM()' は PostgreSQL などで使える関数で、「ランダムな順番で並べ替える」 MySQLの場合はRAND()

    if @correct_yaku.nil?
      redirect_to quiz_result_yaku_index_path and return
    end

    session[:used_yaku_ids] << @correct_yaku.id # used_yaku_idsに今問題で出した役のidを追加する
    session[:quiz_count] += 1 # クイズの数であるquiz_countに1を足す
    

    @choices = (Yaku.where.not(id: @correct_yaku.id).sample(3) + [@correct_yaku]).shuffle #where テーブル内の条件に一致したレコードを配列の形で取得することができるメソッド。
    #shuffleメソッド　配列の要素をランダムシャッフルして，その結果を配列として返します sampleメソッド 配列の要素を1個(引数を指定した場合 n 個) ランダムに選んで返します。
    #モデル.where.not(条件..) WHEREと一緒に使用し条件式に一致しないものを取得
    
  end

  def check_answer
    @selected_id = params[:answer_id].to_i
    @correct_id = params[:correct_id].to_i
    @is_correct = (@selected_id == @correct_id)

    @selected_yaku = Yaku.find(@selected_id)
    @correct_yaku = Yaku.find(@correct_id)

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
