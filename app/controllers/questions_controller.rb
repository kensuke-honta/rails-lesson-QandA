class QuestionsController < ApplicationController
  # 質問の一覧表示
  def index
  
  end

  # 質問の詳細ページ表示
  def show
  
  end

  # 質問の作成
  def new
    @question = Question.new
  end

  # 質問の登録
  def create
    #questionモデルを初期化(引数でquestion_paramsを置くことで値をセットできる)
    @question = Question.new(question_params)
    #questionモデルをDBに保存
    @question.save
    #showへリダイレクト
    redirect_to @question
  end

  # 質問の編集
  def edit
  
  end

  # 質問の更新
  def update
  
  end

  # 質問の削除
  def destroy
  
  end

  private
  # メソッド名は慣習としてmodel名_paramsとする
  def question_params
    params.require(:question).permit(:title, :name, :content)
  end
  
end
